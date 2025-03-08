import 'package:logger/logger.dart';

final Logger _initLogger = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

abstract class Utils {
  static Logger get logger {
    return _initLogger;
  }
}
