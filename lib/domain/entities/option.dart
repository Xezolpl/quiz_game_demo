import 'package:freezed_annotation/freezed_annotation.dart';
part 'option.freezed.dart';
part 'option.g.dart';

@freezed
abstract class QuizOption with _$QuizOption {
  const factory QuizOption({
    @required int id,
    @required String name,
    @required String description,
    @required String param1,
    @required String param2,
    @required String param3,
    @required double param4,
    @required int param5,
    @required int param6,
    @required String param7,
    @required int param8,
    @required double param9,
  }) = _QuizOption;

  factory QuizOption.empty() => QuizOption(
        id: -1,
        name: '',
        description: '',
        param1: '',
        param2: '',
        param3: '',
        param4: 0,
        param5: 0,
        param6: 0,
        param7: '',
        param8: 0,
        param9: 0,
      );

  factory QuizOption.fromJson(Map<String, dynamic> json) =>
      _$QuizOptionFromJson(json);
}
