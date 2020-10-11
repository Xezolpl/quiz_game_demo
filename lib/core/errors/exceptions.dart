import 'dart:developer';

abstract class MyException implements Exception {
  final String message;

  MyException(this.message) {
    log(this.toString());
  }

  @override
  String toString() {
    return 'Exception thrown with message: $message';
  }
}

class DatabaseException extends MyException {
  DatabaseException(String message) : super(message);
}
