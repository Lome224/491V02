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
    bool reachedMax();

   private:
    void resetStates();  // internal use only, does not reset the sensor
    void reinit();       // re-runs sensor init + clears history after prolonged timeouts
    void insertHistory(uint16_t distance);
    bool validReading(uint16_t distance) const;

    VL53L0X sensor_;
    bool initialized_ = false;
    bool timeout_ = false;
    bool warmup_ = true;  // true until the first valid reading arrives
    uint16_t distanceMm_ = 0;
    uint8_t consecutiveBadReads_ = 0;  // timeouts or out-of-range; both feed recovery

    // Stability filtering history. Circular buffer of the most recent valid readings, used for median/smoothing and turn-around detection.
    uint16_t history_[config::kVl53l0xHistoryWindow] = {};
    uint16_t medianHistory_[config::kVl53l0xHistoryWindow] = {}; 
    uint16_t smoothedHistory_[config::kVl53l0xHistoryWindow] ={}; 

    int lastHistoryIndex_ = -1;
    int historyIndex_ = 0;

    bool movingCloser_ = false;
    long turningMs_ = 0;

    bool reachedMinLatch_ = false;
    bool reachedMaxLatch_ = false;
};

}  // namespace motorctl
