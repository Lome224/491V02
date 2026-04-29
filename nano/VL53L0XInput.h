// VL53L0XInput.h — Simple wrapper around the VL53L0X distance sensor.
//
// Owns: sensor initialization and the latest distance sample.
// Does NOT own: what the reading means for app behavior;
//   main.cpp decides how to use or print the data.

#pragma once

#include <Arduino.h>
#include <VL53L0X.h>

#include "Config.h"

namespace motorctl {

class VL53L0XInput {
   public:
    bool begin();
    void update();

    bool initialized() const { return initialized_; }
    bool timeout() const { return timeout_; }
    void clearTofTimeout() { timeout_ = false; }
    uint16_t distanceMm() const { return distanceMm_; }
    bool reachedMin();

   private:
    void resetStates();  // internal use only, does not reset the sensor
    void reinit();       // re-runs sensor init + clears history after prolonged timeouts
    void insertHistory(uint16_t distance);
    bool validReading(uint16_t distance) const;

    VL53L0X sensor_;
    bool initialized_ = false;
    bool timeout_ = false;
    uint16_t distanceMm_ = 0;
    uint8_t consecutiveBadReads_ = 0;  // timeouts or out-of-range; both feed recovery

    // Min-detection state
    volatile uint16_t history_[config::kVl53l0xDetectHistoryWindow] = {};
    volatile uint16_t medianHistory_[config::kVl53l0xDetectHistoryWindow] =
        {};  // Median of recent samples, for  stable min detection.
    volatile uint16_t smoothedHistory_[config::kVl53l0xDetectHistoryWindow] =
        {};  // Mean of median samples, for stable min detection.

    int lastHistoryIndex_ = -1;
    int historyIndex_ = 0;
    size_t historyCount_ = 0;

    bool movingCloser_ = false;
    long turningMs = 0;
    bool reachedMinLatch_ = false;
};

}  // namespace motorctl
