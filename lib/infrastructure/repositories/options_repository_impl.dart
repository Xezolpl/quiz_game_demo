import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_game_demo/core/errors/exceptions.dart' as myExceptions;
import 'package:quiz_game_demo/core/errors/failures.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/domain/repositories/options_repository.dart';
import 'package:quiz_game_demo/infrastructure/datasources/local_datasource.dart.dart';

@Injectable(as: IOptionsRepository)
class OptionsRepositoryImpl implements IOptionsRepository {
  final ILocalDataSource localDS;

  OptionsRepositoryImpl(this.localDS);

  @override
  Future<Either<Failure, QuizOption>> getOption(int id) async {
    try {
      final option = await localDS.getOption(id);
      return Right(option);
    } on myExceptions.DatabaseException catch (e) {
      log('Caught $e exception in OptionsRepository.getOption');
      return Left(DatabaseFailure(e));
    }
  }
}
