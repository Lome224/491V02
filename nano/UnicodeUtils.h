#pragma once


#include <Arduino.h>

// 0/8 to 8/8 block characters.
// These are UTF-8 string literals, so each "character" is multiple bytes.
const char* BLOCKS[9] = {
  " ",   // 0/8
  "▏",  // 1/8
  "▎",  // 2/8
  "▍",  // 3/8
  "▌",  // 4/8
  "▋",  // 5/8
  "▊",  // 6/8
  "▉",  // 7/8
  "█"   // 8/8
};

void printProgressBar(float value, float minValue, float maxValue, int width) {
  if (width <= 0) return;

  // Clamp value
  if (value < minValue) value = minValue;
  if (value > maxValue) value = maxValue;

  float ratio = (value - minValue) / (maxValue - minValue);

  // Total fill in eighths
  int totalUnits = round(ratio * width * 8.0);

  int fullBlocks = totalUnits / 8;
  int partial = totalUnits % 8;

  for (int i = 0; i < width; i++) {
    if (i < fullBlocks) {
      Serial.print(BLOCKS[8]);
    } else if (i == fullBlocks && partial > 0) {
      Serial.print(BLOCKS[partial]);
    } else {
      Serial.print(BLOCKS[0]);
    }
  }
}