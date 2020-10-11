import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_info.freezed.dart';

@freezed
abstract class VideoInfo with _$VideoInfo {
  const factory VideoInfo({
    @required int id,
    @required List<int> optionsIds,
    @required List<Duration> optionsTimes,
  }) = _VideoInfo;

  factory VideoInfo.empty() => VideoInfo(
        id: -1,
        optionsIds: [],
        optionsTimes: [],
      );
}

///Custom from json as extension because freezed generator was generating
///messed code which wasn't actually working
extension XVideoInfo on VideoInfo {
  static VideoInfo fromJson(Map<String, dynamic> json) {
    return VideoInfo(
      id: json['id'] as int,
      optionsIds: (json['optionsIds'] as String)
          ?.split(';')
          ?.map((e) => int.parse(e))
          ?.toList(),
      //optionsTimes are in Database as String like "12.500;15.850;21.900"
      //so we split first ";" to get seperate times and then make durations from them
      optionsTimes:
          (json['optionsTimes'] as String)?.split(';')?.map<Duration>((e) {
        var secAndMilisec = e.split('.');
        return Duration(
            seconds: int.parse(secAndMilisec[0]),
            milliseconds: int.parse(secAndMilisec[1]));
      })?.toList(),
    );
  }
}
