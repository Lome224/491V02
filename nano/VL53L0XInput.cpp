#include "VL53L0XInput.h"

#include <Wire.h>

#include "Config.h"

namespace motorctl {

void VL53L0XInput::resetStates() {
    timeout_ = false;
    distanceMm_ = 0;
    lastHistoryIndex_ = -1;
    historyIndex_ = 0;
    historyCount_ = 0;
    reachedMinLatch_ = false;
    consecutiveBadReads_ = 0;
    movingCloser_ = false;
    turningMs = 0;

    for (size_t i = 0; i < config::kVl53l0xDetectHistoryWindow; ++i) {
        history_[i] = 0;
        medianHistory_[i] = 0;
        smoothedHistory_[i] = 0;
    }
}

bool VL53L0XInput::begin() {
    Wire.begin();
    Wire.setClock(100000); // VL53L0X can be picky about I2C timing; 100kHz is more stable than the default 400kHz on Nano

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
    history_[historyIndex_] = distance;

    // Median over the most recent valid raw samples. Skipping invalid/empty
    // slots prevents a dropped reading (e.g. a missed sample during EMI)
    // from pulling the median toward zero during warmup or recovery.
    uint16_t sorted[config::kVl53l0xMedianCycles] = {};
    uint8_t medianValid = 0;
    for (size_t i = 0; i < config::kVl53l0xMedianCycles; ++i) {
        const uint16_t v = history_[(historyIndex_ + config::kVl53l0xDetectHistoryWindow - i) %
                                    config::kVl53l0xDetectHistoryWindow];
        if (validReading(v)) {
            sorted[medianValid++] = v;
        }
    }
    for (uint8_t i = 0; i + 1 < medianValid; ++i) {
        for (uint8_t j = 0; j + 1 < medianValid - i; ++j) {
            if (sorted[j] > sorted[j + 1]) {
                const uint16_t temp = sorted[j];
                sorted[j] = sorted[j + 1];
                sorted[j + 1] = temp;
            }
        }
    }
    // medianValid is always >= 1 here (we just wrote a valid sample above).
    const uint16_t median = sorted[medianValid / 2];
    medianHistory_[historyIndex_] = median;

    // Mean over the most recent valid medians. Modulus must be the ring
    // size (kVl53l0xDetectHistoryWindow); the previous code used
    // kVl53l0xSmoothCycles, which indexed off the end of the 9-slot buffer.
    uint32_t sum = 0;
    uint8_t smoothValid = 0;
    for (size_t i = 0; i < config::kVl53l0xSmoothCycles; ++i) {
        const uint16_t m = medianHistory_[(historyIndex_ + config::kVl53l0xDetectHistoryWindow - i) %
                                          config::kVl53l0xDetectHistoryWindow];
        if (validReading(m)) {
            sum += m;
            ++smoothValid;
        }
    }
    const uint16_t smoothed = static_cast<uint16_t>(sum / smoothValid);
    smoothedHistory_[historyIndex_] = smoothed;

    // Defer trend detection until the smoothing window is fully populated
    // with real data; before that, min/max scans over the ring are biased
    // by still-empty slots and would produce spurious turning points.
    const bool warmedUp = (historyCount_ + 1) >= config::kVl53l0xSmoothCycles;

    uint32_t potentialTurningPoint = 0;
    auto nowMs = millis();
    if (warmedUp && (turningMs == 0 || (nowMs - turningMs) >= config::kVl53l0xMinStableTimeMs)) {
        // check for trend change every kVl53l0xMinStableTimeMs, to avoid reacting to noise
        if (movingCloser_) {
            for (size_t i = 0; i < historyCount_; ++i) {
                if (!validReading(smoothedHistory_[(historyIndex_ + config::kVl53l0xDetectHistoryWindow - i) %
                                                   config::kVl53l0xDetectHistoryWindow])) {
                    continue;
                }
                const uint16_t candidate = smoothedHistory_[(historyIndex_ + config::kVl53l0xDetectHistoryWindow - i) %
                                                            config::kVl53l0xDetectHistoryWindow];
                if (potentialTurningPoint == 0 || candidate < potentialTurningPoint) {
                    potentialTurningPoint = candidate;
                }
            }

            if (potentialTurningPoint != 0 && smoothed > potentialTurningPoint + config::kVl53l0xTrendDeltaMm) {
                reachedMinLatch_ = true;
                movingCloser_ = false;
                turningMs = nowMs;
            }
        } else {
            for (size_t i = 0; i < historyCount_; ++i) {
                if (!validReading(smoothedHistory_[(historyIndex_ + config::kVl53l0xDetectHistoryWindow - i) %
                                                   config::kVl53l0xDetectHistoryWindow])) {
                    continue;
                }
                const uint16_t candidate = smoothedHistory_[(historyIndex_ + config::kVl53l0xDetectHistoryWindow - i) %
                                                            config::kVl53l0xDetectHistoryWindow];
                if (candidate > potentialTurningPoint) {
                    potentialTurningPoint = candidate;
                }
            }
            if (potentialTurningPoint != 0 && smoothed < potentialTurningPoint - config::kVl53l0xTrendDeltaMm) {
                movingCloser_ = true;
                turningMs = nowMs;
            }
        }

        // Debug info
        Serial.print(F("D Raw: "));
        Serial.print(distance);
        Serial.print(F(" Median: "));
        Serial.print(median);
        Serial.print(F(" Smoothed: "));
        Serial.print(smoothed);
        Serial.print(F(" Pt: "));
        Serial.print(potentialTurningPoint);
        if (reachedMinLatch_) {
            Serial.print(F(" (X)"));
        }
        Serial.println();
    }

    // Update to new index
    lastHistoryIndex_ = historyIndex_;
    historyIndex_ = (historyIndex_ + 1) % config::kVl53l0xDetectHistoryWindow;
    if (historyCount_ < config::kVl53l0xDetectHistoryWindow) {
        ++historyCount_;
    }
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
        if (consecutiveBadReads_ < 0xFF) {
            ++consecutiveBadReads_;
        }
        if (consecutiveBadReads_ >= config::kVl53l0xRecoveryTimeouts) {
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
}  // namespace motorctl
