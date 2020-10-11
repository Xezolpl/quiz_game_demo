import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:quiz_game_demo/core/errors/failures.dart';
import 'package:quiz_game_demo/domain/entities/option.dart';
import 'package:quiz_game_demo/domain/entities/video_info.dart';
import 'package:quiz_game_demo/domain/repositories/options_repository.dart';
import 'package:quiz_game_demo/domain/repositories/videos_repository.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

@Injectable()
class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final IOptionsRepository optionsRepository;
  final IVideosRepository videosRepository;

  //list of all the videos
  List<VideoInfo> allVideos = [];
  //list available videos ids
  List<int> availableVideosIds = [];
  //AudioCachePlayer
  AudioCache audioCache = AudioCache(prefix: 'assets/cars_sounds/');

  //CONSTRUCTOR
  QuizBloc(this.optionsRepository, this.videosRepository)
      : super(QuizState.initial());

  @override
  Stream<QuizState> mapEventToState(
    QuizEvent event,
  ) async* {
    yield* event.map(initializeVideos: (e) async* {
      Option<Failure> failureOption = none();

      //get either failure or List<VideoInfo> from the repository
      var either = await videosRepository.getAllVideos();

      //get the results
      either.fold((l) => failureOption = some(l), (r) {
        allVideos = r;
      });

      //if there was an Exception it was smoothly converted into the failure
      //now when yielding state with failureOption: some(f) it will cause an
      //failure alert
      yield state.copyWith(failureOption: failureOption);

      if (allVideos.isNotEmpty) {
        //all the videos are currently available
        availableVideosIds = allVideos.map((e) => e.id).toList();
        //select random video to load
        add(QuizEvent.randomVideo());
      }
    }, randomVideo: (e) async* {
      //index at the available videos list
      int index = Random().nextInt(availableVideosIds.length);
      //available videos stores yet not used ids of the videos
      int randomVideoId = availableVideosIds[index];
      //remove the video from available
      availableVideosIds.removeAt(index);
      //get video from list by its id
      VideoInfo randomVideo =
          allVideos.firstWhere((element) => element.id == randomVideoId);
      //add the event
      add(QuizEvent.loadOptionsForVideo(randomVideo));
    }, loadOptionsForVideo: (e) async* {
      Option<Failure> failureOption = none();
      //Sequence in which the options should be placed
      List<QuizOption> validOptionsSequence = [];
      //Sequence in which options will be placed by user, contains 3 populated
      //with data options and 3 empty options as the placeholders
      List<QuizOption> currentOptionsSequence = [];

      for (int i = 0; i < e.videoInfo.optionsIds.length; i++) {
        //get the options from repository by theirs ids -> fold and get
        //either valid option or a failure
        await optionsRepository.getOption(e.videoInfo.optionsIds[i]).then(
            (either) => either.fold((l) => failureOption = some(l),
                (r) => validOptionsSequence.add(r)));
      }
      //place the valid options in random order
      List<int> optionsPositions = [];

      for (int i = 0; i < 3;) {
        int generatedNumber = Random().nextInt(3);
        if (optionsPositions.contains(generatedNumber)) {
          continue;
        } else {
          optionsPositions.add(generatedNumber);
          i++;
        }
      }
      //the first 3 places are placeholders for options, then user can drag the
      //options populated options to the holders above them
      var emptyOption = QuizOption.empty();
      currentOptionsSequence = [
        emptyOption,
        emptyOption,
        emptyOption,
        validOptionsSequence[optionsPositions[0]],
        validOptionsSequence[optionsPositions[1]],
        validOptionsSequence[optionsPositions[2]],
      ];

      yield state.copyWith(
        currentOptions: currentOptionsSequence,
        validOptions: validOptionsSequence,
        failureOption: failureOption,
        currentVideo: e.videoInfo,
      );
    },
        //JUST YIELD SAME STATE  WITH  DIFFERENT CURRENT OPTIONS
        optionChanged: (e) async* {
      //able to check?
      bool isAbleToCheck = false;
      //copy of the state's options list
      var options = List<QuizOption>.from(state.currentOptions);
      //position where e.option was staying before the replacement
      int previousPosition = options.indexOf(e.option);
      //option which was staying at e.movedPosition before the replacement
      var optionOnNewPosition = options[e.movedToPosition];
      //options with replaced variables
      options
        //move e.option from previousPosition to e.movedToPosition
        ..removeAt(e.movedToPosition)
        ..insert(e.movedToPosition, e.option)
        //move optionOnNewPosition from e.movedPosition to previousPosition
        ..removeAt(previousPosition)
        ..insert(previousPosition, optionOnNewPosition);

      //if options 1,2,3 are not empty (if all options are attached to option holders)
      if (options[0].id != -1 && options[1].id != -1 && options[2].id != -1) {
        //able to check
        isAbleToCheck = true;
      }

      yield state.copyWith(
          currentOptions: options, isAbleToCheck: isAbleToCheck);
    }, optionWasOnVideo: (e) async* {
      //make copy of the alreadySeenOnVideoOptions list
      List<int> alreadySeenOptions = List.from(state.alreadySeenOptions);
      //add the currently seen option
      alreadySeenOptions.add(e.index);
      //yield the state
      yield state.copyWith(alreadySeenOptions: alreadySeenOptions);
      //play the checking audio
      audioCache.play('check.mp3', volume: 0.8);
    },
        //BUTTONS
        checkClicked: (e) async* {
      yield state.copyWith(
        isVideoPlaying: true,
        areOptionsLocked: true,
      );
    }, replayClicked: (e) async* {
      yield state.copyWith(
        isVideoPlaying: true,
      );
    }, nextClicked: (e) async* {
      yield state.copyWith(
        alreadySeenOptions: [],
        areOptionsLocked: false,
        isAbleToCheck: false,
        isVideoPlaying: false,
        isChecked: false,
        failureOption: none(),
      );
      add(QuizEvent.randomVideo());
    }, videoEnded: (e) async* {
      yield state.copyWith(
        isVideoPlaying: false,
        isChecked: true,
      );
    });
  }
}
