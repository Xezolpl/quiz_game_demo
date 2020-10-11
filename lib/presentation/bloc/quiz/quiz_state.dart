part of 'quiz_bloc.dart';

@freezed
abstract class QuizState with _$QuizState {
  const factory QuizState({
    @required List<QuizOption> currentOptions,
    @required List<QuizOption> validOptions,
    @required List<int> alreadySeenOptions,
    @required VideoInfo currentVideo,
    @required bool areOptionsLocked,
    @required bool isAbleToCheck,
    @required bool isVideoPlaying,
    @required bool isChecked,
    @required Option<Failure> failureOption,
  }) = _QuizState;

  factory QuizState.initial() => QuizState(
        currentOptions: [],
        validOptions: [],
        alreadySeenOptions: [],
        currentVideo: VideoInfo.empty(),
        areOptionsLocked: false,
        isAbleToCheck: false,
        isVideoPlaying: false,
        isChecked: false,
        failureOption: none(),
      );
}
