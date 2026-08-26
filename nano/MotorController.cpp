#include "MotorController.h"

// Step pulses are driven by Timer1 in CTC mode: each compare-match toggles
// PD6 with a single PIN-register write — the cheapest GPIO flip on AVR. The
// main loop only writes the step interval to OCR1A, so heavy work there
// (I2C reads, serial, ramp math) no longer competes with pulse timing.
//
// Prescaler /8 at 16 MHz → 0.5 μs/tick. A CTC cycle is (OCR1A + 1) ticks,
// and each cycle toggles the pin, so the full STEP period in μs equals
// (OCR1A + 1). That gives a clean 1:1 map: OCR1A = intervalUs - 1.

ISR(TIMER1_COMPA_vect) {
    // Writing a 1 to a PIN bit toggles the matching PORT bit on AVR —
    // the cheapest GPIO flip possible. Mask lives in Config.h next to kStepPin.
    PIND = motorctl::config::kStepPinMask;
}

namespace motorctl {

namespace {

static_assert(config::kSlowStepIntervalUs >= config::kFastStepIntervalUs,
              "kSlowStepIntervalUs must be >= kFastStepIntervalUs");
static_assert(config::kFastStepIntervalUs >= 20,
              "kFastStepIntervalUs is below the safe Timer1 ISR floor");

constexpr uint8_t kTimer1Stopped = _BV(WGM12);
constexpr uint8_t kTimer1Running = _BV(WGM12) | _BV(CS11);  // CTC + /8 prescaler
constexpr unsigned long kMinStepIntervalUs = config::kFastStepIntervalUs;
constexpr unsigned long kMaxStepIntervalUs = 0xFFFFUL;

bool g_stepTimerRunning = false;

void configureStepTimer() {
    const uint8_t sreg = SREG;
    cli();
    TCCR1A = 0;                                       // normal port op, no PWM output
    TCCR1B = kTimer1Stopped;                          // CTC (TOP = OCR1A), clock stopped
    TCNT1 = 0;
    OCR1A = static_cast<uint16_t>(kMaxStepIntervalUs);
    TIMSK1 &= ~_BV(OCIE1A);                           // disabled until an interval is set
    g_stepTimerRunning = false;
    SREG = sreg;
}

unsigned long clampStepIntervalUs(unsigned long intervalUs) {
    if (intervalUs < kMinStepIntervalUs) {
        intervalUs = kMinStepIntervalUs;
    } else if (intervalUs > kMaxStepIntervalUs) {
        intervalUs = kMaxStepIntervalUs;
    }
    return intervalUs;
}

void setStepIntervalUs(unsigned long intervalUs) {
    intervalUs = clampStepIntervalUs(intervalUs);
    const uint16_t top = static_cast<uint16_t>(intervalUs - 1);

    const uint8_t sreg = SREG;
    cli();
    // Reassert the full Timer1 setup on every update. If any library or
    // memory upset changes the mode/prescaler while the timer is already
    // running, OCR1A telemetry can look correct while the physical STEP pin
    // runs much faster than the configured limit.
    TCCR1A = 0;
    OCR1A = top;
    if (TCNT1 > top) {
        TCNT1 = 0;                                    // shortening: skip the long wrap cycle
    }
    if (!g_stepTimerRunning) {
        TIFR1 = _BV(OCF1A);                           // drop any stale compare-match flag
        TIMSK1 |= _BV(OCIE1A);
        g_stepTimerRunning = true;
    }
    TCCR1B = kTimer1Running;
    SREG = sreg;
}

void stopStepTimer() {
    const uint8_t sreg = SREG;
    cli();
    TCCR1A = 0;
    TCCR1B = kTimer1Stopped;                          // stop clock, keep CTC config
    TIMSK1 &= ~_BV(OCIE1A);
    g_stepTimerRunning = false;
    PORTD &= ~config::kStepPinMask;                   // idle the step line low
    SREG = sreg;
}

}  // namespace

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
    configureStepTimer();
    smoothedBaseIntervalUs_ = static_cast<float>(adcToIntervalUs(config::kAdcMin));
    lastUpdateMs_ = millis();
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

bool MotorController::triggerPause() {
    auto nowMs = millis();
    if (status_.state != MotorState::Running) {
        return false;
    }

    // Cooldown: once Running, ignore pause requests until we've been running
    // long enough. Avoids a stale trigger firing right after the last pause.
    if (nowMs - stateStartMs_ < config::kPauseMinIntervalMs) {
        return false;
    }
    nextStateDurationMs_ = random(config::kPauseMinMs, config::kPauseMaxMs);
    enterState(MotorState::RampDown, nowMs);
    return true;
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

void MotorController::update(int adc) {
    status_.adc = adc;
    const unsigned long baseIntervalUs = adcToIntervalUs(status_.adc);
    const unsigned long nowMs = millis();
    const unsigned long dtMs = nowMs - lastUpdateMs_;
    lastUpdateMs_ = nowMs;

    const MotorState next = nextState(nowMs);
    if (next != status_.state) {
        enterState(next, nowMs);
    }

    // Smooth knob-driven interval changes only in the Running state. During
    // ramps or pause we snap so the next RampUp starts from the live knob
    // position instead of a stale smoothed value. First-order IIR:
    //     α = dt / (dt + τ)    →    no expf() needed, stable for any dt.
    if (status_.state == MotorState::Running) {
        const float target = static_cast<float>(baseIntervalUs);
        const float alpha =
            static_cast<float>(dtMs) / static_cast<float>(dtMs + config::kKnobSlewTauMs);
        smoothedBaseIntervalUs_ += (target - smoothedBaseIntervalUs_) * alpha;
    } else {
        smoothedBaseIntervalUs_ = static_cast<float>(baseIntervalUs);
    }

    status_.speedScale = speedScale(nowMs);
    const bool active = isStepping() && status_.speedScale > 0.0f;

    if (!active) {
        status_.stepsPerSecond = 0.0f;
        stopStepTimer();
        return;
    }

    // Ramps slow the motor by inflating the interval; clamp the divisor so
    // the very start of a ramp doesn't produce an absurdly large interval.
    const float clampedScale = status_.speedScale < 0.05f ? 0.05f : status_.speedScale;
    const unsigned long effectiveIntervalUs =
        static_cast<unsigned long>(smoothedBaseIntervalUs_ / clampedScale);
    const unsigned long actualIntervalUs = clampStepIntervalUs(effectiveIntervalUs);

    status_.stepsPerSecond = 1000000.0f / static_cast<float>(actualIntervalUs);
    setStepIntervalUs(actualIntervalUs);
}

}  // namespace motorctl
