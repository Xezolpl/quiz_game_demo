// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/datasources/local_database.dart';
import 'infrastructure/datasources/local_datasource.dart.dart';
import 'domain/repositories/options_repository.dart';
import 'domain/repositories/videos_repository.dart';
import 'infrastructure/repositories/options_repository_impl.dart';
import 'presentation/bloc/quiz/quiz_bloc.dart';
import 'infrastructure/repositories/videos_repository_impl.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final databaseSingleton = _$DatabaseSingleton();
  final database = await databaseSingleton.database;
  gh.factory<Database>(() => database);
  gh.lazySingleton<ILocalDataSource>(
      () => LocalDataSourceImpl(get<Database>()));
  gh.factory<IOptionsRepository>(
      () => OptionsRepositoryImpl(get<ILocalDataSource>()));
  gh.factory<IVideosRepository>(
      () => VideosRepositoryImpl(get<ILocalDataSource>()));
  gh.factory<QuizBloc>(
      () => QuizBloc(get<IOptionsRepository>(), get<IVideosRepository>()));
  return get;
}

class _$DatabaseSingleton extends DatabaseSingleton {}
