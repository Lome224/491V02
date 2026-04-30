#include "VL53L0XInput.h"

#include <Wire.h>

#include "Config.h"
#include "UnicodeUtils.h"

namespace motorctl {

void VL53L0XInput::resetStates() {
    timeout_ = false;
    distanceMm_ = 0;
    lastHistoryIndex_ = -1;
    historyIndex_ = 0;
    reachedMinLatch_ = false;
    consecutiveBadReads_ = 0;
    movingCloser_ = false;
    turningMs_ = 0;

    for (size_t i = 0; i < config::kVl53l0xHistoryWindow; ++i) {
        history_[i] = 0;
        medianHistory_[i] = 0;
        smoothedHistory_[i] = 0;
    }
}

bool VL53L0XInput::begin() {
    Wire.begin();
    Wire.setClock(
        100000);  // VL53L0X can be picky about I2C timing; 100kHz is more stable than the default 400kHz on Nano

    sensor_.setTimeout(config::kVl53l0xTimeoutMs);
    if (!sensor_.init()) {
        initialized_ = false;
        resetStates();
        return false;
    }

    sensor_.startContinuous(config::kVl53l0xSamplePeriodMs);
    initialized_ = true;
    resetStates();
    return true;
}

void VL53L0XInput::insertHistory(uint16_t distance) {
    if (!validReading(distance)) {
        return;
    }
    distance = max(distance, config::kVl53l0xMinClampMm);  // Clamp to minimum to avoid false triggers
    distance = min(distance, config::kVl53l0xMaxClampMm);  // Clamp to maximum to reject spurious readings
    history_[historyIndex_] = distance;

    // Median over the most recent valid raw samples.
    uint16_t median = distance;  // default to the current reading if not enough history
    if (!warmup_) {
        uint16_t sorted[config::kVl53l0xMedianCycles] = {};
        for (size_t i = 0; i < config::kVl53l0xMedianCycles; ++i) {
            sorted[i] = history_[(historyIndex_ + config::kVl53l0xHistoryWindow - i) % config::kVl53l0xHistoryWindow];
        }
        for (uint8_t i = 0; i + 1 < config::kVl53l0xMedianCycles; ++i) {
            for (uint8_t j = 0; j + 1 < config::kVl53l0xMedianCycles - i; ++j) {
                if (sorted[j] > sorted[j + 1]) {
                    const uint16_t temp = sorted[j];
                    sorted[j] = sorted[j + 1];
                    sorted[j + 1] = temp;
                }
            }
        }
        median = sorted[config::kVl53l0xMedianCycles / 2];
    }
    medianHistory_[historyIndex_] = median;

    // Mean over the most recent valid medians. Modulus must be the ring
    // size (kVl53l0xHistoryWindow); the previous code used
    // kVl53l0xSmoothCycles, which indexed off the end of the 9-slot buffer.
    uint16_t mean = median;  // default to the current median if not enough history
    if (!warmup_) {
        uint32_t sum = 0;
        uint8_t smoothValid = 0;
        for (size_t i = 0; i < config::kVl53l0xSmoothCycles; ++i) {
            sum += medianHistory_[(historyIndex_ + config::kVl53l0xHistoryWindow - i) % config::kVl53l0xHistoryWindow];
        }
        mean = static_cast<uint16_t>(sum / config::kVl53l0xSmoothCycles);
    }
    smoothedHistory_[historyIndex_] = mean;

    // Defer trend detection until the smoothing window is fully populated
    // with real data; before that, min/max scans over the ring are biased
    // by still-empty slots and would produce spurious turning points.
    auto nowMs = millis();

    if (!warmup_ && (turningMs_ == 0 || (nowMs - turningMs_) >= config::kVl53l0xMinStableTimeMs)) {
        uint32_t maxPointMm = 0, minPointMm = 0xFFFF;
        for (size_t i = 0; i < config::kVl53l0xHistoryWindow; ++i) {
            const uint16_t candidate =
                smoothedHistory_[(historyIndex_ + config::kVl53l0xHistoryWindow - i) % config::kVl53l0xHistoryWindow];
            maxPointMm = max(maxPointMm, candidate);
            minPointMm = min(minPointMm, candidate);
        }
        // check for trend change every kVl53l0xMinStableTimeMs, to avoid reacting to noise
        if (movingCloser_) {
            turningDistanceMm_ = min(turningDistanceMm_, minPointMm);
            // If distance rises enough after the lowest point, we passed min.
            if (mean > turningDistanceMm_ + config::kVl53l0xTrendDeltaMm) {
                reachedMinLatch_ = true;
                movingCloser_ = false;
                turningMs_ = nowMs;
            }
        } else {
            // If distance drops enough after the highest point, we passed max.
            turningDistanceMm_ = max(turningDistanceMm_, maxPointMm);
            if (mean < turningDistanceMm_ - config::kVl53l0xTrendDeltaMm) {
                reachedMaxLatch_ = true;
                movingCloser_ = true;
                turningMs_ = nowMs;
            }
        }

        // Debug info
        // Serial.print(F("D Raw: "));
        // Serial.print(distance);
        // Serial.print(F(" Median: "));
        // Serial.print(median);
        // Serial.print(F(" Mean: "));
        // Serial.print(mean);
        // Serial.print(F(" Range: ["));
        // Serial.print(minPointMm);
        // Serial.print(F(", "));
        // Serial.print(maxPointMm);
        // Serial.print(F("]"));
        // Serial.print(F(" Trend: "));
        // Serial.print(movingCloser_ ? F("Closer") : F("Away"));
        // if (reachedMinLatch_) {
        //     Serial.print(F(" (min) "));
        // }
        // if (reachedMaxLatch_) {
        //     Serial.print(F(" (max) "));
        // }
        // if (distance > 50 && distance < 320) {
        //     printProgressBar(distance, 0, 320, 16);
        // }
        Serial.println();
    }

    // Update to new index
    lastHistoryIndex_ = historyIndex_;
    historyIndex_ = (historyIndex_ + 1) % config::kVl53l0xHistoryWindow;
    if (historyIndex_ == 0)
        warmup_ = false;  // We've wrapped around at least once, so the history is now fully populated with real data
                          // and trend detection can begin.
}

bool VL53L0XInput::validReading(uint16_t distance) const {
    return distance > 0 && distance < config::kVl53l0xMaxDistanceMm;
}

void VL53L0XInput::update() {
    if (!initialized_) {
        return;
    }

    distanceMm_ = sensor_.readRangeContinuousMillimeters();
    timeout_ = sensor_.timeoutOccurred();

    // Any unusable sample feeds the same counter: I2C bus timeouts (65535),
    // the sensor's "signal invalid" sentinel (~8190), or anything past the
    // plausible range limit. If they keep stacking, the sensor is wedged
    // (EMI / brownout / bus hang) and only a re-init will unstick it.
    if (timeout_ || !validReading(distanceMm_)) {
        if (consecutiveBadReads_ < config::kVl53l0xFailBeforeReinit) {
            ++consecutiveBadReads_;
        } else if (config::kVl53l0xFailBeforeReinit > 0) {
            reinit();
        }
        return;
    }
    consecutiveBadReads_ = 0;
    insertHistory(distanceMm_);
}

void VL53L0XInput::reinit() {
    sensor_.setTimeout(config::kVl53l0xTimeoutMs);
    if (sensor_.init()) {
        sensor_.startContinuous(config::kVl53l0xSamplePeriodMs);
    }
    resetStates();
}

bool VL53L0XInput::reachedMin() {
    bool reachedMin = reachedMinLatch_;
    reachedMinLatch_ = false;  // auto-clear latch after reading
    return reachedMin;
}

bool VL53L0XInput::reachedMax() {
    bool reachedMax = reachedMaxLatch_;
    reachedMaxLatch_ = false;  // auto-clear latch after reading
    return reachedMax;
}

}  // namespace motorctl
