// ButtonInput.h — Debounced button input.
//
// Owns: debounce timing and one-shot press event detection.
// Does NOT own: hardware reads or what a press means;
//   main.cpp samples the fixed pause button and triggers behavior.

#pragma once

#include <Arduino.h>

namespace motorctl {

class ButtonInput {
   public:
    void begin(uint8_t pin, uint8_t mode = INPUT_PULLUP);
    void update();
    bool consumePress();
    bool isPressed() const { return stablePressed_; }
    void updatePin(uint8_t newPin, uint8_t newMode = INPUT_PULLUP) {
        pin = newPin;
        mode = newMode;
        pinMode(pin, mode);
    }

   private:
    uint8_t pin = 0;
    uint8_t mode = INPUT_PULLUP;
    bool lastObservedPressed_ = false;
    bool stablePressed_ = false;
    unsigned long lastChangeMs_ = 0;
    bool pressedHandled_ = false;
};

}  // namespace motorctl
