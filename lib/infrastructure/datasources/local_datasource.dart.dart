import 'package:injectable/injectable.dart';
import 'package:quiz_game_demo/core/errors/exceptions.dart' as myExceptions;
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/domain/entities/video_info.dart';
import 'local_database.dart';

const String OPTIONS_TABLE = 'options';
const String VIDEOS_TABLE = 'videos';

abstract class ILocalDataSource {
  Future<QuizOption> getOption(int id);
  Future<VideoInfo> getVideo(int id);
  Future<List<VideoInfo>> getAllVideos();
}

@LazySingleton(as: ILocalDataSource)
class LocalDataSourceImpl implements ILocalDataSource {
  final Database db;

  LocalDataSourceImpl(this.db);

  Future<Map<String, dynamic>> _get(int id, String table) async {
    try {
      return (await db.query(table, where: 'id=?', whereArgs: [id])).first;
    } on Exception {
      //Baza danych nie istnieje / nie posiada takiej tabeli
      throw myExceptions.DatabaseException(
          'DatabaseException - Could not realise query "SELECT * FROM $table WHERE id=$id"');
    }
  }

  Future<List<Map<String, dynamic>>> _getAll(String table) async {
    try {
      return (await db.query(table));
    } on Exception {
      //Baza danych nie istnieje / nie posiada takiej tabeli
      throw myExceptions.DatabaseException(
          'Could not realise query "SELECT * FROM $table');
    }
  }

  //OPTIONS
  @override
  Future<QuizOption> getOption(int id) async {
    return QuizOption.fromJson(await _get(id, OPTIONS_TABLE));
  }

  //VIDEOS
  @override
  Future<VideoInfo> getVideo(int id) async {
    return XVideoInfo.fromJson(await _get(id, VIDEOS_TABLE));
  }

  @override
  Future<List<VideoInfo>> getAllVideos() async {
    return (await _getAll(VIDEOS_TABLE))
        .map((json) => XVideoInfo.fromJson(json))
        .toList();
  }
}
