#include "MotorController.h"

namespace motorctl {

const __FlashStringHelper* toString(MotorState state) {
    switch (state) {
        case MotorState::Pause:
            return F("pause");
        case MotorState::Running:
            return F("running");
        case MotorState::RampDown:
            return F("ramp_down");
        case MotorState::RampUp:
            return F("ramp_up");
    }
    return F("running");
}

float MotorController::smoothStep(float t) {
    if (t <= 0.0f) {
        return 0.0f;
    }
    if (t >= 1.0f) {
        return 1.0f;
    }
    return SMOOTH_FUNC(t);
}

unsigned long MotorController::adcToIntervalUs(int adc) {
    if (adc < config::kAdcMin) {
        adc = config::kAdcMin;
    } else if (adc > config::kAdcMax) {
        adc = config::kAdcMax;
    }

    return config::kSlowStepIntervalUs -
           (static_cast<unsigned long>(adc) * (config::kSlowStepIntervalUs - config::kFastStepIntervalUs)) /
               static_cast<unsigned long>(config::kAdcMax);
}

void MotorController::begin(bool directionHigh) {
    pinMode(config::kDirPin, OUTPUT);
    pinMode(config::kStepPin, OUTPUT);
    digitalWrite(config::kStepPin, LOW);
    setDirection(directionHigh);
}

void MotorController::setDirection(bool directionHigh) {
    status_.directionHigh = directionHigh;
    digitalWrite(config::kDirPin, status_.directionHigh ? HIGH : LOW);
}

void MotorController::startRunning() {
    // Any state -> running state
    auto nowMs = millis();
    nextStateDurationMs_ = 0;  // clear any pending state deadline since we're forcing running state
    if (status_.state == MotorState::Running || status_.state == MotorState::RampUp) {
        return;  // In progress or already running, do nothing.
    }
    enterState(MotorState::RampUp, nowMs);
}

void MotorController::stopRunning() {
    // Any state -> pause
    auto nowMs = millis();
    pendingDirectionFlip_ = false;
    nextStateDurationMs_ = 0;
    if (status_.state == MotorState::Pause) {
        enterState(MotorState::Pause, nowMs);  // Cancel any pending auto-resume.
        return;
    }
    if (status_.state == MotorState::RampDown) {
        return;  // Already ramping down; zero-duration pause will be applied on arrival.
    }
    enterState(MotorState::RampDown, nowMs);
}

void MotorController::flipDirection() {
    // Any state -> pause -> running with flipped direction
    auto nowMs = millis();
    pendingDirectionFlip_ = true;  // signal to flip direction at the next pause state
    nextStateDurationMs_ = 1; // if currently running, schedule a very short pause to flip direction quickly; if already pausing, this will be applied immediately
    if (status_.state == MotorState::Pause) {
        enterState(MotorState::Pause, nowMs);  // Re-enter pause to flip direction immediately without ramping.
        return;
    }

    enterState(MotorState::RampDown, nowMs);
}

void MotorController::triggerPause() {
    if (status_.state == MotorState::Pause || status_.state == MotorState::RampDown) {
        return;
    }

    auto nowMs = millis();
    nextStateDurationMs_ = random(config::kPauseMinMs, config::kPauseMaxMs);
    enterState(MotorState::RampDown, nowMs);
}

MotorState MotorController::nextState(unsigned long nowMs) const {
    if (stateDeadlineMs_ == 0 || nowMs < stateDeadlineMs_) {  // not yet due for a state change
        return status_.state;
    }

    // Really simple FSM: Pause -> RampUp -> Running -> RampDown -> Pause, with optional timing-based transitions for the ramps and pause.
    switch (status_.state) {
        case MotorState::Pause:
            return MotorState::RampUp;
        case MotorState::RampUp:
            return MotorState::Running;
        case MotorState::Running:
            return MotorState::RampDown;
        case MotorState::RampDown:
            return MotorState::Pause;
    }
    return MotorState::Running;
}

void MotorController::enterState(MotorState nextState, unsigned long nowMs) {
    status_.state = nextState;
    stateStartMs_ = nowMs;
    switch (status_.state) {
        case MotorState::Pause:
            if (pendingDirectionFlip_) {
                setDirection(!status_.directionHigh);
                pendingDirectionFlip_ = false;
            }
            stateDeadlineMs_ = nextStateDurationMs_ ? nowMs + nextStateDurationMs_ : 0;
            nextStateDurationMs_ = 0;
            return;
        case MotorState::Running:
            stateDeadlineMs_ = 0;
            nextStateDurationMs_ = 0;
            return;
        case MotorState::RampDown:
            stateDeadlineMs_ = nowMs + config::kPauseRampMs;
            return;
        case MotorState::RampUp:
            stateDeadlineMs_ = nowMs + config::kPauseRampMs;
            return;
    }
}

float MotorController::speedScale(unsigned long nowMs) const {
    switch (status_.state) {
        case MotorState::Pause:
            return 0.0f;
        case MotorState::Running:
            return 1.0f;
        case MotorState::RampDown:
        case MotorState::RampUp: {
            const unsigned long phaseSpan = stateDeadlineMs_ - stateStartMs_;
            const float t =
                phaseSpan == 0 ? 1.0f : static_cast<float>(nowMs - stateStartMs_) / static_cast<float>(phaseSpan);
            return status_.state == MotorState::RampDown ? 1.0f - smoothStep(t) : smoothStep(t);
        }
    }
    return 1.0f;
}

void MotorController::emitStepPulse_() const {
    digitalWrite(config::kStepPin, HIGH);
    delayMicroseconds(config::kStepPulseWidthUs);
    digitalWrite(config::kStepPin, LOW);
}

void MotorController::update(int adc) {
    status_.adc = adc;
    auto baseIntervalUs = adcToIntervalUs(status_.adc);

    auto nowMs = millis();
    auto nowUs = micros();

    // transition state if the deadline has passed, and update speed scale and active state based on the new state.
    const MotorState next = nextState(nowMs);
    if (next != status_.state) {
        enterState(next, nowMs);
    }

    // Calculate the current speed scale and effective step interval based on the current state and ADC reading.
    status_.speedScale = speedScale(nowMs);
    auto active = isStepping();

    auto effectiveIntervalUs = active ? baseIntervalUs / max(status_.speedScale, 0.0001f) : baseIntervalUs;

    status_.stepsPerSecond = active ? (1000000.0f / static_cast<float>(effectiveIntervalUs)) : 0.0f;

    if (!active) {
        lastStepTimeUs_ = nowUs;
        return;
    }

    if ((nowUs - lastStepTimeUs_) < effectiveIntervalUs) {
        return;
    }

    lastStepTimeUs_ = nowUs;
    emitStepPulse_();
}

}  // namespace motorctl
