import 'package:dartz/dartz.dart';
import 'package:quiz_game_demo/core/errors/failures.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';

abstract class IOptionsRepository {
  Future<Either<Failure, QuizOption>> getOption(int id);
}
