// DebugConsole.h — Serial command parsing and status/event output.
//
// Owns: RX line buffering, command tokenizing, help/status/event printing.
// Does NOT own: motor state, button state, or any hardware pins.
// All data for status printing arrives via the flat ConsoleStatus struct,
// so this module has no dependency on MotorController or ButtonInput.

#pragma once

#include <Arduino.h>

#include "Config.h"

namespace motorctl {

enum class ConsoleCommandType {
    None,
    Help,
    Status,
    Start,
    Stop,
    Pause,
    DirFlip,
    TelemetryOn,
    TelemetryOff,
    SetTelemetryInterval,
    Invalid,
};

struct ConsoleCommand {
    ConsoleCommandType type = ConsoleCommandType::None;
    long value = 0;
    const __FlashStringHelper* message = nullptr;
};

// Flat snapshot of the entire system state, built by main.cpp.
// Uses only primitives and flash strings so DebugConsole stays independent.
struct ConsoleStatus {
    // Motor
    const __FlashStringHelper* motorState = nullptr;
    bool directionHigh = false;
    int adc = 0;
    float speedScale = 0.0f;
    float stepsPerSecond = 0.0f;
    // Button
    bool buttonPressed = false;
    // VL53L0X
    bool tofInitialized = false;
    bool tofTimeout = false;
    uint16_t tofDistanceMm = 0;
};

class DebugConsole {
   public:
    void begin();
    bool poll(ConsoleCommand& command);

    void logEvent(const __FlashStringHelper* level, const __FlashStringHelper* message) const;
    void logEvent(const __FlashStringHelper* level, const char* message) const;
    void printHelp() const;
    void printStatus(const ConsoleStatus& status) const;

    void error(const __FlashStringHelper* message, bool loop = true) const {
        while (loop) {
            logEvent(F("ERROR"), message);
            delay(3000);
        }
    }

   private:
    ConsoleCommand parseCommand(char* line) const;

    char serialBuffer_[config::kSerialBufferSize] = {};
    size_t serialLength_ = 0;
};

}  // namespace motorctl
