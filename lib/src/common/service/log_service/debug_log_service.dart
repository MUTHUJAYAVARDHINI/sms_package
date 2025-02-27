import 'dart:developer' as developer;
import 'package:logger/logger.dart';

import 'log_service.dart';

class DebugLogService implements LogService {
  DebugLogService({Logger? logger}) {
    _logger = logger ??
        Logger(
        );
  }
  late final Logger _logger;

  @override
  void e(String message, dynamic e, StackTrace? stack) {
    _logger.e(message, error: e, stackTrace: stack);
  }

  @override
  void i(String message) {
    _logger.i(message);
  }

  @override
  void w(String message, [dynamic e, StackTrace? stack]) {
    _logger.w(message, error: e, stackTrace: stack);
  }
}