import 'dart:developer';

import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final Exception exception;

  Failure(this.exception) {
    log('Exception ${exception.toString()} catched and converted into ${this.toString()}.');
  }

  @override
  List<Object> get props => [exception];
}

class VideosLoadingFailure extends Failure {
  VideosLoadingFailure(Exception exception) : super(exception);
}

class DatabaseFailure extends Failure {
  DatabaseFailure(Exception exception) : super(exception);
}
