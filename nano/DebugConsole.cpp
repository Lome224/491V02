#include "DebugConsole.h"

#include <ctype.h>
#include <stdlib.h>
#include <string.h>

namespace motorctl {
namespace {

bool equalsIgnoreCase(const char* left, const char* right) {
    if (left == nullptr || right == nullptr) {
        return false;
    }

    while (*left != '\0' && *right != '\0') {
        if (tolower(static_cast<unsigned char>(*left)) != tolower(static_cast<unsigned char>(*right))) {
            return false;
        }
        ++left;
        ++right;
    }

    return *left == '\0' && *right == '\0';
}

size_t splitArgs(char* line, char* argv[], size_t maxArgs) {
    size_t argc = 0;
    char* token = strtok(line, " \t");

    while (token != nullptr && argc < maxArgs) {
        argv[argc++] = token;
        token = strtok(nullptr, " \t");
    }

    return argc;
}

}  // namespace

void DebugConsole::begin() {
    serialLength_ = 0;
    serialBuffer_[0] = '\0';
}

bool DebugConsole::poll(ConsoleCommand& command) {
    while (Serial.available() > 0) {
        const char raw = static_cast<char>(Serial.read());

        if (raw == '\r') {
            continue;
        }

        if (raw == '\n') {
            serialBuffer_[serialLength_] = '\0';
            if (serialLength_ > 0) {
                command = parseCommand(serialBuffer_);
                serialLength_ = 0;
                serialBuffer_[0] = '\0';
                return true;
            }
            serialLength_ = 0;
            serialBuffer_[0] = '\0';
            continue;
        }

        if (serialLength_ + 1 < config::kSerialBufferSize) {
            serialBuffer_[serialLength_++] = raw;
            serialBuffer_[serialLength_] = '\0';
        }
    }
    return false;
}

void DebugConsole::logEvent(const __FlashStringHelper* level, const __FlashStringHelper* message) const {
    Serial.print(F("EVT level="));
    Serial.print(level);
    Serial.print(F(" msg=\""));
    Serial.print(message);
    Serial.println('"');
}

void DebugConsole::logEvent(const __FlashStringHelper* level, const char* message) const {
    Serial.print(F("EVT level="));
    Serial.print(level);
    Serial.print(F(" msg=\""));
    Serial.print(message);
    Serial.println('"');
}

void DebugConsole::printHelp() const {
    Serial.println(F("CMD help"));
    Serial.println(F("CMD status"));
    Serial.println(F("CMD start"));
    Serial.println(F("CMD stop"));
    Serial.println(F("CMD pause"));
    Serial.println(F("CMD dir // Swtch direction"));
    Serial.println(F("CMD tel on|off // Enable or disable periodic telemetry"));
    Serial.println(F("CMD tel interval <ms>"));
}

void DebugConsole::printStatus(const ConsoleStatus& s) const {
    Serial.print(F("S state="));
    Serial.print(s.motorState);
    Serial.print(F(" dir="));
    Serial.print(s.directionHigh ? F("1") : F("0"));
    Serial.print(F(" pressed="));
    Serial.print(s.buttonPressed ? F("1") : F("0"));
    Serial.print(F(" tof_mm="));
    if (s.tofInitialized) {
        Serial.print(s.tofDistanceMm);
        Serial.print(s.tofTimeout ? F("(x)") : F(""));
    } else {
        Serial.print(F("(N/A)"));
    }
    Serial.print(F(" a="));
    Serial.print(s.adc);
    Serial.print(F(" scale="));
    Serial.print(s.speedScale, 3);
    Serial.print(F(" step="));
    Serial.println(s.stepsPerSecond, 1);
}

ConsoleCommand DebugConsole::parseCommand(char* line) const {
    char* argv[4] = {};
    const size_t argc = splitArgs(line, argv, 4);

    if (argc == 0) {
        return {};
    }

    if (equalsIgnoreCase(argv[0], "help")) {
        return {ConsoleCommandType::Help};
    }

    if (equalsIgnoreCase(argv[0], "status")) {
        return {ConsoleCommandType::Status};
    }

    if (equalsIgnoreCase(argv[0], "start")) {
        return {ConsoleCommandType::Start};
    }

    if (equalsIgnoreCase(argv[0], "stop")) {
        return {ConsoleCommandType::Stop};
    }

    if (equalsIgnoreCase(argv[0], "pause") && argc == 1) {
        return {ConsoleCommandType::Pause};
    }

    if (equalsIgnoreCase(argv[0], "dir") && argc == 1) {
        return {ConsoleCommandType::DirFlip};
    }

    if ((equalsIgnoreCase(argv[0], "telemetry") || equalsIgnoreCase(argv[0], "tel")) && argc >= 2) {
        if (equalsIgnoreCase(argv[1], "on")) {
            return {ConsoleCommandType::TelemetryOn};
        }
        if (equalsIgnoreCase(argv[1], "off")) {
            return {ConsoleCommandType::TelemetryOff};
        }
        if (equalsIgnoreCase(argv[1], "interval") && argc >= 3) {
            const long intervalMs = strtol(argv[2], nullptr, 10);
            if (intervalMs >= 100) {
                return {ConsoleCommandType::SetTelemetryInterval, intervalMs};
            }
            return {ConsoleCommandType::Invalid, intervalMs, F("telemetry interval must be >= 100")};
        }
    }

    if (argc >= 1 && (equalsIgnoreCase(argv[0], "telemetry") || equalsIgnoreCase(argv[0], "tel"))) {
        return {ConsoleCommandType::Invalid, 0, F("usage: tel on|off | telemetry interval <ms>")};
    }
    if (argc >= 1 && equalsIgnoreCase(argv[0], "pause")) {
        return {ConsoleCommandType::Invalid, 0, F("usage: pause")};
    }
    if (argc >= 1 && equalsIgnoreCase(argv[0], "dir")) {
        return {ConsoleCommandType::Invalid, 0, F("usage: dir")};
    }

    return {ConsoleCommandType::Invalid, 0, F("unknown command")};
}

}  // namespace motorctl
