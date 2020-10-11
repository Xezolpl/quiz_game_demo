import 'package:dartz/dartz.dart';
import 'package:quiz_game_demo/domain/entities/video_info.dart';
import 'package:quiz_game_demo/core/errors/failures.dart';

abstract class IVideosRepository {
  Future<Either<Failure, VideoInfo>> getVideoInfo(int number);
  Future<Either<Failure, List<VideoInfo>>> getAllVideos();
}
