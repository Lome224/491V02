#include "ButtonInput.h"

#include "Config.h"

namespace motorctl {

void ButtonInput::begin(uint8_t pin, uint8_t mode) {
    this->pin = pin;
    this->mode = mode;
    pinMode(pin, mode);
    lastObservedPressed_ = false;
    stablePressed_ = false;
    lastChangeMs_ = 0;
    pressedHandled_ = false;
}

void ButtonInput::update() {
    bool pressed = digitalRead(pin) == LOW;
    auto nowMs = millis();
    if (pressed != lastObservedPressed_) {
        lastObservedPressed_ = pressed;
        lastChangeMs_ = nowMs;
    }

    // Debounce
    if ((nowMs - lastChangeMs_) >= config::kDebounceMs) {
        stablePressed_ = pressed;
    }
}

bool ButtonInput::consumePress() {
    // Emit one event for one full press/release cycle.
    if (stablePressed_ && !pressedHandled_) {
        pressedHandled_ = true;
        return true;
    }

    if (!stablePressed_) {
        pressedHandled_ = false;
    }

    return false;
}

}  // namespace motorctl
