part of 'quiz_bloc.dart';

@freezed
abstract class QuizEvent with _$QuizEvent {
  //videos
  const factory QuizEvent.initializeVideos() = _InitializeVideos;
  const factory QuizEvent.randomVideo() = _RandomVideo;

  //options
  const factory QuizEvent.loadOptionsForVideo(VideoInfo videoInfo) =
      _LoadOptionsForVideo;
  const factory QuizEvent.optionChanged(
      int movedToPosition, QuizOption option) = _OptionChanged;
  const factory QuizEvent.optionWasOnVideo(int index) = _OptionWasOnVideo;

  //buttons
  const factory QuizEvent.checkClicked() = _CheckClicked;
  const factory QuizEvent.replayClicked() = _ReplayClicked;
  const factory QuizEvent.nextClicked() = _NextClicked;
  const factory QuizEvent.videoEnded() = _VideoEnded;
}
