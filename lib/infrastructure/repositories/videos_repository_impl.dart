import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:quiz_game_demo/core/errors/failures.dart';
import 'package:quiz_game_demo/domain/entities/video_info.dart';
import 'package:quiz_game_demo/domain/repositories/videos_repository.dart';
import 'package:quiz_game_demo/infrastructure/datasources/local_datasource.dart.dart';
import 'package:quiz_game_demo/core/errors/exceptions.dart' as myExceptions;

@Injectable(as: IVideosRepository)
class VideosRepositoryImpl implements IVideosRepository {
  final ILocalDataSource localDS;

  VideosRepositoryImpl(this.localDS);

  @override
  Future<Either<Failure, List<VideoInfo>>> getAllVideos() async {
    try {
      final videos = await localDS.getAllVideos();
      return Right(videos);
    } on myExceptions.DatabaseException catch (e) {
      log('Caught $e exception in VideosRepository.getAllVideos');
      return Left(DatabaseFailure(e));
    }
  }

  @override
  Future<Either<Failure, VideoInfo>> getVideoInfo(int id) async {
    try {
      final video = await localDS.getVideo(id);
      return Right(video);
    } on myExceptions.DatabaseException catch (e) {
      log('Caught $e exception in VideosRepository.getVideoInfo');
      return Left(DatabaseFailure(e));
    }
  }
}
