// MotorController.h — Motor motion behavior and state machine.
//
// Owns: ADC-to-speed mapping, motor state transitions, and STEP pulse output.
// Does NOT own: hardware pin reads, button logic, or serial I/O.

#pragma once

#include <Arduino.h>

#include "Config.h"

namespace motorctl {

enum class MotorState {
    Pause,
    Running,
    RampDown,
    RampUp,
};

struct MotorStatus {
    MotorState state = MotorState::Running;
    bool directionHigh = false;
    int adc = config::kAdcMin;
    float speedScale = 1.0f;
    float stepsPerSecond = 0.0f;
};

class MotorController {
   public:
    void begin(bool directionHigh = false);
    void setDirection(bool directionHigh);

    void startRunning();
    void stopRunning();
    void flipDirection();
    void triggerPause();
    // update() is the per-loop motor step: it advances state, updates timing,
    // and emits a STEP pulse when due.
    void update(int adc);

    MotorStatus status() const { return status_; }

   private:
    // Smoothstep keeps the pause ramps soft without extra state or tables.
    static float smoothStep(float t);
    // Convert the analog knob reading into a base step interval.
    static unsigned long adcToIntervalUs(int adc);
    MotorState nextState(unsigned long nowMs) const;
    void enterState(MotorState nextState, unsigned long nowMs);
    float speedScale(unsigned long nowMs) const;
    void emitStepPulse_() const;
    bool isStepping() const {
        return status_.state == MotorState::Running || status_.state == MotorState::RampDown ||
               status_.state == MotorState::RampUp;
    }

    MotorStatus status_;
    unsigned long lastStepTimeUs_ = 0;
    bool pendingDirectionFlip_ = false;
    // FSM: current state + timing for the active state.
    unsigned long stateStartMs_ = 0;
    unsigned long stateDeadlineMs_ = 0;
    unsigned long nextStateDurationMs_ = 0;
};

const __FlashStringHelper* toString(MotorState state);

}  // namespace motorctl
