import 'dart:developer' show log;

import 'package:flutter/foundation.dart' show kDebugMode;

enum LogMode { debug, live }

class Logger {
  static LogMode _logMode = LogMode.debug;

  static void init() {
    Logger._logMode = kDebugMode ? LogMode.debug : LogMode.live;
  }

  static void logger({
    String message = 'An error occurred!!!',
    Object? error,
    StackTrace? stackTrace,
    String name = '',
  }) {
    if (_logMode == LogMode.debug) {
      log(
        message,
        error: error,
        stackTrace: stackTrace,
        name: name,
      );
    }
  }
}
