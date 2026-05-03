// main.cpp — Top-level orchestration for the motor controller.
//
// This file owns:
//   - Arduino setup() and loop()
//   - All direct hardware reads (A0 analog, pause button GPIO)
//   - App-level state (telemetry settings)
//   - Wiring between modules: serial commands → state changes → motor/button
//
// The main loop follows a fixed pipeline each tick:
//   1. Poll serial commands and apply them
//   2. Sample the physical button and debounce it
//   3. Convert button press events into motor pause triggers
//   4. Sample A0 and update the motor FSM
//   5. Emit one STEP pulse if it is time
//   6. Print telemetry if due

#include <Arduino.h>

#include "ButtonInput.h"
#include "Config.h"
#include "DebugConsole.h"
#include "MotorController.h"
#include "VL53L0XInput.h"

namespace {

struct AppState {
    bool telemetryEnabled = true;
    unsigned long telemetryIntervalMs = motorctl::config::kStatusIntervalMs;
    unsigned long lastStatusMs = 0;
    bool statusRequested = false;
};

motorctl::ButtonInput buttonInput;
motorctl::MotorController motor;
motorctl::DebugConsole debugConsole;
motorctl::VL53L0XInput tofInput;
AppState app;

void requestStatus() { app.statusRequested = true; }

bool statusDue(unsigned long nowMs) {
    return app.statusRequested || (app.telemetryEnabled && (nowMs - app.lastStatusMs) >= app.telemetryIntervalMs);
}

void printStatusIfNeeded(unsigned long nowMs) {
    if (!statusDue(nowMs)) {
        return;
    }

    const motorctl::MotorStatus ms = motor.status();
    debugConsole.printStatus({motorctl::toString(ms.state),
                              ms.directionHigh,
                              ms.adc,
                              ms.speedScale,
                              ms.stepsPerSecond,
                              buttonInput.isPressed(),
                              tofInput.initialized(),
                              tofInput.timeout(),
                              tofInput.distanceMm()});
    app.lastStatusMs = nowMs;
    app.statusRequested = false;
}

void handleCommand(const motorctl::ConsoleCommand& command, unsigned long nowMs) {
    switch (command.type) {
        case motorctl::ConsoleCommandType::None:
            return;

        case motorctl::ConsoleCommandType::Help:
            debugConsole.printHelp();
            return;

        case motorctl::ConsoleCommandType::Status:
            requestStatus();
            return;

        case motorctl::ConsoleCommandType::Start:
            motor.startRunning();
            debugConsole.logEvent(F("INFO"), F("motor turned on"));
            requestStatus();
            return;
        case motorctl::ConsoleCommandType::Stop:
            motor.stopRunning();
            debugConsole.logEvent(F("INFO"), F("motor turned off"));
            requestStatus();
            return;

        case motorctl::ConsoleCommandType::Pause:
            if (motor.triggerPause()) {
                debugConsole.logEvent(F("INFO"), F("pause command simulated"));
            } else {
                debugConsole.logEvent(F("INFO"), F("pause command ignored"));
            }
            requestStatus();
            return;

        case motorctl::ConsoleCommandType::DirFlip:
            motor.flipDirection();
            debugConsole.logEvent(F("INFO"), F("direction flip queued"));
            requestStatus();
            return;

        case motorctl::ConsoleCommandType::TelemetryOn:
            app.telemetryEnabled = true;
            debugConsole.logEvent(F("INFO"), F("telemetry enabled"));
            requestStatus();
            return;
        case motorctl::ConsoleCommandType::TelemetryOff:
            app.telemetryEnabled = false;
            debugConsole.logEvent(F("INFO"), F("telemetry disabled"));
            requestStatus();
            return;
        case motorctl::ConsoleCommandType::SetTelemetryInterval:
            app.telemetryIntervalMs = static_cast<unsigned long>(command.value);
            debugConsole.logEvent(F("INFO"), F("telemetry interval updated"));
            requestStatus();
            return;

        case motorctl::ConsoleCommandType::Invalid:
            debugConsole.logEvent(F("ERROR"), command.message == nullptr ? F("invalid command") : command.message);
            debugConsole.printHelp();
            return;
    }
}

}  // namespace

void setup() {
    Serial.begin(motorctl::config::kSerialBaud);
    delay(500);
    randomSeed(analogRead(motorctl::config::kKnobPin));

    debugConsole.begin();
    motor.begin();
    buttonInput.begin(motorctl::config::kPauseButtonPin);

    if (tofInput.begin()) {
        debugConsole.logEvent(F("INFO"), F("VL53L0X initialized"));
    } else {
        debugConsole.logEvent(F("ERROR"), F("VL53L0X init failed"));
    }

    debugConsole.logEvent(F("INFO"), motorctl::config::kReadyMessage);
    debugConsole.printHelp();
    requestStatus();
    printStatusIfNeeded(millis());
}

void loop() {
    const unsigned long nowMs = millis();
    motorctl::ConsoleCommand command;

    while (debugConsole.poll(command)) {
        handleCommand(command, nowMs);
    }

    // Check button states
    // buttonInput.update();
    // if (buttonInput.consumePress()) {
    //     if (motor.triggerPause()) {
    //         debugConsole.logEvent(F("INFO"), F("bubble press detected"));
    //         requestStatus();
    //     }
    // }

    // Check tof sensor
    tofInput.update();
    if (tofInput.reachedMin() && motor.triggerPause()) {
        debugConsole.logEvent(F("INFO"), F("object detected within threshold distance"));
        requestStatus();
    }

    // Update motor state and emit a step pulse if one is due.
    motor.update(analogRead(motorctl::config::kKnobPin));
    printStatusIfNeeded(nowMs);
}
