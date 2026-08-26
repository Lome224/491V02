// Config.h — All tunable values for the motor controller.
//
// Everything a new user might want to touch lives in this file. Nothing
// here depends on any other project header, so you can edit a value,
// rebuild, and upload without chasing references across files.
//
// Sections:
//   1. Serial
//   2. Pin assignments            (physical wiring)
//   3. Motor speed & ramp timing  (feel of the motion)
//   4. Button debounce            (pause button)
//   5. VL53L0X distance sensor    (ToF-triggered pause)
//   6. Telemetry                  (status line over Serial)

#pragma once

#include <Arduino.h>

namespace motorctl::config {

// ---------------------------------------------------------------------------
// 1. Serial
// ---------------------------------------------------------------------------
inline constexpr unsigned long kSerialBaud = 115200;
inline constexpr char kReadyMessage[] = "arduino nano motor controller ready";

// ---------------------------------------------------------------------------
// 2. Pin assignments
//    Change these to match your wiring. See docs/HARDWARE.md for the full
//    pinout and wiring diagram.
// ---------------------------------------------------------------------------
inline constexpr uint8_t kKnobPin = A0;        // speed knob (analog in)
inline constexpr uint8_t kDirPin = 7;          // stepper DIR
inline constexpr uint8_t kStepPin = 6;         // stepper STEP (driven by Timer1 ISR)
inline constexpr uint8_t kPauseButtonPin = 2;  // manual pause button (to GND, INPUT_PULLUP)

// Bitmask for the STEP pin. Used by the Timer1 ISR in MotorController to
// toggle the pin with a single PIN-register write. Must stay in sync with
// kStepPin — the static_assert below fails loud if they drift apart.
inline constexpr uint8_t kStepPinMask = _BV(PD6);
static_assert(kStepPin == 6, "kStepPinMask assumes kStepPin is Arduino pin 6 (PD6); update both together.");

// ---------------------------------------------------------------------------
// 3. Motor speed & ramp timing
//    The knob maps linearly from kSlowStepIntervalUs (knob at 0) to
//    kFastStepIntervalUs (knob at max). Smaller interval = faster motor.
// ---------------------------------------------------------------------------
inline constexpr int kAdcMin = 0;
inline constexpr int kAdcMax = 1023;

inline constexpr unsigned long kSlowStepIntervalUs = 4000;  // knob fully CCW: ~250 steps/s
inline constexpr unsigned long kFastStepIntervalUs = 500;   // knob fully CW:  ~2000 steps/s

// Random pause duration, picked each time a pause is triggered.
inline constexpr unsigned long kPauseMinMs = 3000;
inline constexpr unsigned long kPauseMaxMs = 6000;
// Ramp-up / ramp-down length around each pause (smoothstep-shaped).
inline constexpr unsigned long kPauseRampMs = 400;
// Minimum time we must stay in Running before another pause can trigger.
// Prevents a fresh pause from firing right after returning from one.
inline constexpr unsigned long kPauseMinIntervalMs = 1500;

// IIR time constant for smoothing knob changes while running. Aggressive
// knob twists slew in over ~3τ instead of lurching. Larger = smoother + laggier.
inline constexpr unsigned long kKnobSlewTauMs = 200;

// ---------------------------------------------------------------------------
// 4. Button debounce
// ---------------------------------------------------------------------------
inline constexpr unsigned long kDebounceMs = 20;

// ---------------------------------------------------------------------------
// 5. VL53L0X distance sensor (I2C, triggers a pause when something gets close)
// ---------------------------------------------------------------------------
inline constexpr unsigned long kVl53l0xTimeoutMs = 50;
inline constexpr uint16_t kVl53l0xSamplePeriodMs = 0;  // 0 = as fast as the sensor allows
inline constexpr uint16_t kVl53l0xMaxClampMm = 1200;   // readings above this are rejected
inline constexpr uint16_t kVl53l0xMinClampMm = 120;    // readings below this are clamped to it. Protects against false
                                                       // triggers from very close objects or sensor errors.
inline constexpr uint16_t kVl53l0xMaxDistanceMm =
    2000;  // Readings above this are considered invalid (either sensor error or something out of range) and feed into
           // the recovery timeout counter.
inline constexpr uint16_t kVl53l0xFailBeforeReinit =
    0xF;  // Number of consecutive bad readings (timeouts or out-of-range) before we attempt to re-init the sensor. Set
          // to 0 to disable auto-recovery, but be aware that a single bad reading can cause the sensor to wedge until
          // the next power cycle.

// Min-distance filtering. Kept short so the motor reacts quickly,
// but long enough that a single noisy sample doesn't trip a pause.
inline constexpr uint8_t kVl53l0xHistoryWindow = 21;      // Better to keep a longer history
inline constexpr uint8_t kVl53l0xMedianCycles = 3;        // median window depth
inline constexpr uint8_t kVl53l0xSmoothCycles = 3;        // mean-of-medians depth
inline constexpr uint16_t kVl53l0xTrendDeltaMm = 5;       // mm of margin for turn-around detection
inline constexpr uint16_t kVl53l0xMinStableTimeMs = 200;  // closer/away must persist this long, longer -> more stable

// ---------------------------------------------------------------------------
// 6. Telemetry
// ---------------------------------------------------------------------------
inline constexpr unsigned long kStatusIntervalMs = 1000;
inline constexpr size_t kSerialBufferSize = 96;

// Smoothstep helper used by the motor ramp math. Kept here because it's
// tuning-adjacent: swap to a different curve if you want a different feel.
#define SMOOTH_FUNC(t) ((t) * (t) * (3.0f - 2.0f * (t)))

}  // namespace motorctl::config
