// Config.h — Centralized pin assignments and timing constants.
//
// All tunable values live here so they are easy to find and change.
// Nothing in this file depends on any other project header.

#pragma once

#include <Arduino.h>

namespace motorctl::config {

#define SMOOTH_FUNC(t) (t * t * (3.0f - 2.0f * t))

inline constexpr unsigned long kSerialBaud = 115200;
inline constexpr uint8_t kKnobPin = A0;
inline constexpr uint8_t kDirPin = 7;
inline constexpr uint8_t kStepPin = 6;
inline constexpr uint8_t kPauseButtonPin = 2;
inline constexpr char kReadyMessage[] = "arduino nano motor controller ready";

inline constexpr int kAdcMin = 0;
inline constexpr int kAdcMax = 1023;
inline constexpr unsigned long kDebounceMs = 20;
inline constexpr unsigned long kPauseMinMs = 1000;
inline constexpr unsigned long kPauseMaxMs = 3500;
inline constexpr unsigned long kPauseRampMs = 400;

inline constexpr unsigned long kVl53l0xTimeoutMs = 50;
inline constexpr uint16_t kVl53l0xSamplePeriodMs = 0;
inline constexpr uint16_t kVl53l0xMaxDistanceMm = 1200;

inline constexpr uint8_t kVl53l0xDetectHistoryWindow = 9;  // odd number is nicer
inline constexpr uint8_t kVl53l0xMedianCycles = 3;         // 3 is responsive enough
inline constexpr uint8_t kVl53l0xSmoothCycles = 5;         // 5 is responsive enough
inline constexpr uint16_t kVl53l0xTrendDeltaMm = 3;        // margin for turnning
inline constexpr uint16_t kVl53l0xMinStableTimeMs = 600;  // moving closer/away must be stable for this long

inline constexpr unsigned long kSlowStepIntervalUs = 2000;
inline constexpr unsigned long kFastStepIntervalUs = 100;
inline constexpr unsigned long kStepPulseWidthUs = 10;

inline constexpr unsigned long kStatusIntervalMs = 1000;
inline constexpr size_t kSerialBufferSize = 96;

}  // namespace motorctl::config
