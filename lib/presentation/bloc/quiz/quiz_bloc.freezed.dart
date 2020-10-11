// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quiz_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuizEventTearOff {
  const _$QuizEventTearOff();

// ignore: unused_element
  _InitializeVideos initializeVideos() {
    return const _InitializeVideos();
  }

// ignore: unused_element
  _RandomVideo randomVideo() {
    return const _RandomVideo();
  }

// ignore: unused_element
  _LoadOptionsForVideo loadOptionsForVideo(VideoInfo videoInfo) {
    return _LoadOptionsForVideo(
      videoInfo,
    );
  }

// ignore: unused_element
  _OptionChanged optionChanged(int movedToPosition, QuizOption option) {
    return _OptionChanged(
      movedToPosition,
      option,
    );
  }

// ignore: unused_element
  _OptionWasOnVideo optionWasOnVideo(int index) {
    return _OptionWasOnVideo(
      index,
    );
  }

// ignore: unused_element
  _CheckClicked checkClicked() {
    return const _CheckClicked();
  }

// ignore: unused_element
  _ReplayClicked replayClicked() {
    return const _ReplayClicked();
  }

// ignore: unused_element
  _NextClicked nextClicked() {
    return const _NextClicked();
  }

// ignore: unused_element
  _VideoEnded videoEnded() {
    return const _VideoEnded();
  }
}

/// @nodoc
// ignore: unused_element
const $QuizEvent = _$QuizEventTearOff();

/// @nodoc
mixin _$QuizEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $QuizEventCopyWith<$Res> {
  factory $QuizEventCopyWith(QuizEvent value, $Res Function(QuizEvent) then) =
      _$QuizEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizEventCopyWithImpl<$Res> implements $QuizEventCopyWith<$Res> {
  _$QuizEventCopyWithImpl(this._value, this._then);

  final QuizEvent _value;
  // ignore: unused_field
  final $Res Function(QuizEvent) _then;
}

/// @nodoc
abstract class _$InitializeVideosCopyWith<$Res> {
  factory _$InitializeVideosCopyWith(
          _InitializeVideos value, $Res Function(_InitializeVideos) then) =
      __$InitializeVideosCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitializeVideosCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$InitializeVideosCopyWith<$Res> {
  __$InitializeVideosCopyWithImpl(
      _InitializeVideos _value, $Res Function(_InitializeVideos) _then)
      : super(_value, (v) => _then(v as _InitializeVideos));

  @override
  _InitializeVideos get _value => super._value as _InitializeVideos;
}

/// @nodoc
class _$_InitializeVideos implements _InitializeVideos {
  const _$_InitializeVideos();

  @override
  String toString() {
    return 'QuizEvent.initializeVideos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitializeVideos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return initializeVideos();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeVideos != null) {
      return initializeVideos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return initializeVideos(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initializeVideos != null) {
      return initializeVideos(this);
    }
    return orElse();
  }
}

abstract class _InitializeVideos implements QuizEvent {
  const factory _InitializeVideos() = _$_InitializeVideos;
}

/// @nodoc
abstract class _$RandomVideoCopyWith<$Res> {
  factory _$RandomVideoCopyWith(
          _RandomVideo value, $Res Function(_RandomVideo) then) =
      __$RandomVideoCopyWithImpl<$Res>;
}

/// @nodoc
class __$RandomVideoCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$RandomVideoCopyWith<$Res> {
  __$RandomVideoCopyWithImpl(
      _RandomVideo _value, $Res Function(_RandomVideo) _then)
      : super(_value, (v) => _then(v as _RandomVideo));

  @override
  _RandomVideo get _value => super._value as _RandomVideo;
}

/// @nodoc
class _$_RandomVideo implements _RandomVideo {
  const _$_RandomVideo();

  @override
  String toString() {
    return 'QuizEvent.randomVideo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RandomVideo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return randomVideo();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (randomVideo != null) {
      return randomVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return randomVideo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (randomVideo != null) {
      return randomVideo(this);
    }
    return orElse();
  }
}

abstract class _RandomVideo implements QuizEvent {
  const factory _RandomVideo() = _$_RandomVideo;
}

/// @nodoc
abstract class _$LoadOptionsForVideoCopyWith<$Res> {
  factory _$LoadOptionsForVideoCopyWith(_LoadOptionsForVideo value,
          $Res Function(_LoadOptionsForVideo) then) =
      __$LoadOptionsForVideoCopyWithImpl<$Res>;
  $Res call({VideoInfo videoInfo});

  $VideoInfoCopyWith<$Res> get videoInfo;
}

/// @nodoc
class __$LoadOptionsForVideoCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$LoadOptionsForVideoCopyWith<$Res> {
  __$LoadOptionsForVideoCopyWithImpl(
      _LoadOptionsForVideo _value, $Res Function(_LoadOptionsForVideo) _then)
      : super(_value, (v) => _then(v as _LoadOptionsForVideo));

  @override
  _LoadOptionsForVideo get _value => super._value as _LoadOptionsForVideo;

  @override
  $Res call({
    Object videoInfo = freezed,
  }) {
    return _then(_LoadOptionsForVideo(
      videoInfo == freezed ? _value.videoInfo : videoInfo as VideoInfo,
    ));
  }

  @override
  $VideoInfoCopyWith<$Res> get videoInfo {
    if (_value.videoInfo == null) {
      return null;
    }
    return $VideoInfoCopyWith<$Res>(_value.videoInfo, (value) {
      return _then(_value.copyWith(videoInfo: value));
    });
  }
}

/// @nodoc
class _$_LoadOptionsForVideo implements _LoadOptionsForVideo {
  const _$_LoadOptionsForVideo(this.videoInfo) : assert(videoInfo != null);

  @override
  final VideoInfo videoInfo;

  @override
  String toString() {
    return 'QuizEvent.loadOptionsForVideo(videoInfo: $videoInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadOptionsForVideo &&
            (identical(other.videoInfo, videoInfo) ||
                const DeepCollectionEquality()
                    .equals(other.videoInfo, videoInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(videoInfo);

  @override
  _$LoadOptionsForVideoCopyWith<_LoadOptionsForVideo> get copyWith =>
      __$LoadOptionsForVideoCopyWithImpl<_LoadOptionsForVideo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return loadOptionsForVideo(videoInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadOptionsForVideo != null) {
      return loadOptionsForVideo(videoInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return loadOptionsForVideo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadOptionsForVideo != null) {
      return loadOptionsForVideo(this);
    }
    return orElse();
  }
}

abstract class _LoadOptionsForVideo implements QuizEvent {
  const factory _LoadOptionsForVideo(VideoInfo videoInfo) =
      _$_LoadOptionsForVideo;

  VideoInfo get videoInfo;
  _$LoadOptionsForVideoCopyWith<_LoadOptionsForVideo> get copyWith;
}

/// @nodoc
abstract class _$OptionChangedCopyWith<$Res> {
  factory _$OptionChangedCopyWith(
          _OptionChanged value, $Res Function(_OptionChanged) then) =
      __$OptionChangedCopyWithImpl<$Res>;
  $Res call({int movedToPosition, QuizOption option});

  $QuizOptionCopyWith<$Res> get option;
}

/// @nodoc
class __$OptionChangedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$OptionChangedCopyWith<$Res> {
  __$OptionChangedCopyWithImpl(
      _OptionChanged _value, $Res Function(_OptionChanged) _then)
      : super(_value, (v) => _then(v as _OptionChanged));

  @override
  _OptionChanged get _value => super._value as _OptionChanged;

  @override
  $Res call({
    Object movedToPosition = freezed,
    Object option = freezed,
  }) {
    return _then(_OptionChanged(
      movedToPosition == freezed
          ? _value.movedToPosition
          : movedToPosition as int,
      option == freezed ? _value.option : option as QuizOption,
    ));
  }

  @override
  $QuizOptionCopyWith<$Res> get option {
    if (_value.option == null) {
      return null;
    }
    return $QuizOptionCopyWith<$Res>(_value.option, (value) {
      return _then(_value.copyWith(option: value));
    });
  }
}

/// @nodoc
class _$_OptionChanged implements _OptionChanged {
  const _$_OptionChanged(this.movedToPosition, this.option)
      : assert(movedToPosition != null),
        assert(option != null);

  @override
  final int movedToPosition;
  @override
  final QuizOption option;

  @override
  String toString() {
    return 'QuizEvent.optionChanged(movedToPosition: $movedToPosition, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OptionChanged &&
            (identical(other.movedToPosition, movedToPosition) ||
                const DeepCollectionEquality()
                    .equals(other.movedToPosition, movedToPosition)) &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movedToPosition) ^
      const DeepCollectionEquality().hash(option);

  @override
  _$OptionChangedCopyWith<_OptionChanged> get copyWith =>
      __$OptionChangedCopyWithImpl<_OptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return optionChanged(movedToPosition, option);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (optionChanged != null) {
      return optionChanged(movedToPosition, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return optionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (optionChanged != null) {
      return optionChanged(this);
    }
    return orElse();
  }
}

abstract class _OptionChanged implements QuizEvent {
  const factory _OptionChanged(int movedToPosition, QuizOption option) =
      _$_OptionChanged;

  int get movedToPosition;
  QuizOption get option;
  _$OptionChangedCopyWith<_OptionChanged> get copyWith;
}

/// @nodoc
abstract class _$OptionWasOnVideoCopyWith<$Res> {
  factory _$OptionWasOnVideoCopyWith(
          _OptionWasOnVideo value, $Res Function(_OptionWasOnVideo) then) =
      __$OptionWasOnVideoCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$OptionWasOnVideoCopyWithImpl<$Res>
    extends _$QuizEventCopyWithImpl<$Res>
    implements _$OptionWasOnVideoCopyWith<$Res> {
  __$OptionWasOnVideoCopyWithImpl(
      _OptionWasOnVideo _value, $Res Function(_OptionWasOnVideo) _then)
      : super(_value, (v) => _then(v as _OptionWasOnVideo));

  @override
  _OptionWasOnVideo get _value => super._value as _OptionWasOnVideo;

  @override
  $Res call({
    Object index = freezed,
  }) {
    return _then(_OptionWasOnVideo(
      index == freezed ? _value.index : index as int,
    ));
  }
}

/// @nodoc
class _$_OptionWasOnVideo implements _OptionWasOnVideo {
  const _$_OptionWasOnVideo(this.index) : assert(index != null);

  @override
  final int index;

  @override
  String toString() {
    return 'QuizEvent.optionWasOnVideo(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OptionWasOnVideo &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @override
  _$OptionWasOnVideoCopyWith<_OptionWasOnVideo> get copyWith =>
      __$OptionWasOnVideoCopyWithImpl<_OptionWasOnVideo>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return optionWasOnVideo(index);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (optionWasOnVideo != null) {
      return optionWasOnVideo(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return optionWasOnVideo(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (optionWasOnVideo != null) {
      return optionWasOnVideo(this);
    }
    return orElse();
  }
}

abstract class _OptionWasOnVideo implements QuizEvent {
  const factory _OptionWasOnVideo(int index) = _$_OptionWasOnVideo;

  int get index;
  _$OptionWasOnVideoCopyWith<_OptionWasOnVideo> get copyWith;
}

/// @nodoc
abstract class _$CheckClickedCopyWith<$Res> {
  factory _$CheckClickedCopyWith(
          _CheckClicked value, $Res Function(_CheckClicked) then) =
      __$CheckClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CheckClickedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$CheckClickedCopyWith<$Res> {
  __$CheckClickedCopyWithImpl(
      _CheckClicked _value, $Res Function(_CheckClicked) _then)
      : super(_value, (v) => _then(v as _CheckClicked));

  @override
  _CheckClicked get _value => super._value as _CheckClicked;
}

/// @nodoc
class _$_CheckClicked implements _CheckClicked {
  const _$_CheckClicked();

  @override
  String toString() {
    return 'QuizEvent.checkClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CheckClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return checkClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkClicked != null) {
      return checkClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return checkClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkClicked != null) {
      return checkClicked(this);
    }
    return orElse();
  }
}

abstract class _CheckClicked implements QuizEvent {
  const factory _CheckClicked() = _$_CheckClicked;
}

/// @nodoc
abstract class _$ReplayClickedCopyWith<$Res> {
  factory _$ReplayClickedCopyWith(
          _ReplayClicked value, $Res Function(_ReplayClicked) then) =
      __$ReplayClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReplayClickedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$ReplayClickedCopyWith<$Res> {
  __$ReplayClickedCopyWithImpl(
      _ReplayClicked _value, $Res Function(_ReplayClicked) _then)
      : super(_value, (v) => _then(v as _ReplayClicked));

  @override
  _ReplayClicked get _value => super._value as _ReplayClicked;
}

/// @nodoc
class _$_ReplayClicked implements _ReplayClicked {
  const _$_ReplayClicked();

  @override
  String toString() {
    return 'QuizEvent.replayClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReplayClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return replayClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (replayClicked != null) {
      return replayClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return replayClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (replayClicked != null) {
      return replayClicked(this);
    }
    return orElse();
  }
}

abstract class _ReplayClicked implements QuizEvent {
  const factory _ReplayClicked() = _$_ReplayClicked;
}

/// @nodoc
abstract class _$NextClickedCopyWith<$Res> {
  factory _$NextClickedCopyWith(
          _NextClicked value, $Res Function(_NextClicked) then) =
      __$NextClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextClickedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$NextClickedCopyWith<$Res> {
  __$NextClickedCopyWithImpl(
      _NextClicked _value, $Res Function(_NextClicked) _then)
      : super(_value, (v) => _then(v as _NextClicked));

  @override
  _NextClicked get _value => super._value as _NextClicked;
}

/// @nodoc
class _$_NextClicked implements _NextClicked {
  const _$_NextClicked();

  @override
  String toString() {
    return 'QuizEvent.nextClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return nextClicked();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextClicked != null) {
      return nextClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return nextClicked(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nextClicked != null) {
      return nextClicked(this);
    }
    return orElse();
  }
}

abstract class _NextClicked implements QuizEvent {
  const factory _NextClicked() = _$_NextClicked;
}

/// @nodoc
abstract class _$VideoEndedCopyWith<$Res> {
  factory _$VideoEndedCopyWith(
          _VideoEnded value, $Res Function(_VideoEnded) then) =
      __$VideoEndedCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoEndedCopyWithImpl<$Res> extends _$QuizEventCopyWithImpl<$Res>
    implements _$VideoEndedCopyWith<$Res> {
  __$VideoEndedCopyWithImpl(
      _VideoEnded _value, $Res Function(_VideoEnded) _then)
      : super(_value, (v) => _then(v as _VideoEnded));

  @override
  _VideoEnded get _value => super._value as _VideoEnded;
}

/// @nodoc
class _$_VideoEnded implements _VideoEnded {
  const _$_VideoEnded();

  @override
  String toString() {
    return 'QuizEvent.videoEnded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoEnded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initializeVideos(),
    @required Result randomVideo(),
    @required Result loadOptionsForVideo(VideoInfo videoInfo),
    @required Result optionChanged(int movedToPosition, QuizOption option),
    @required Result optionWasOnVideo(int index),
    @required Result checkClicked(),
    @required Result replayClicked(),
    @required Result nextClicked(),
    @required Result videoEnded(),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return videoEnded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initializeVideos(),
    Result randomVideo(),
    Result loadOptionsForVideo(VideoInfo videoInfo),
    Result optionChanged(int movedToPosition, QuizOption option),
    Result optionWasOnVideo(int index),
    Result checkClicked(),
    Result replayClicked(),
    Result nextClicked(),
    Result videoEnded(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (videoEnded != null) {
      return videoEnded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initializeVideos(_InitializeVideos value),
    @required Result randomVideo(_RandomVideo value),
    @required Result loadOptionsForVideo(_LoadOptionsForVideo value),
    @required Result optionChanged(_OptionChanged value),
    @required Result optionWasOnVideo(_OptionWasOnVideo value),
    @required Result checkClicked(_CheckClicked value),
    @required Result replayClicked(_ReplayClicked value),
    @required Result nextClicked(_NextClicked value),
    @required Result videoEnded(_VideoEnded value),
  }) {
    assert(initializeVideos != null);
    assert(randomVideo != null);
    assert(loadOptionsForVideo != null);
    assert(optionChanged != null);
    assert(optionWasOnVideo != null);
    assert(checkClicked != null);
    assert(replayClicked != null);
    assert(nextClicked != null);
    assert(videoEnded != null);
    return videoEnded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initializeVideos(_InitializeVideos value),
    Result randomVideo(_RandomVideo value),
    Result loadOptionsForVideo(_LoadOptionsForVideo value),
    Result optionChanged(_OptionChanged value),
    Result optionWasOnVideo(_OptionWasOnVideo value),
    Result checkClicked(_CheckClicked value),
    Result replayClicked(_ReplayClicked value),
    Result nextClicked(_NextClicked value),
    Result videoEnded(_VideoEnded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (videoEnded != null) {
      return videoEnded(this);
    }
    return orElse();
  }
}

abstract class _VideoEnded implements QuizEvent {
  const factory _VideoEnded() = _$_VideoEnded;
}

/// @nodoc
class _$QuizStateTearOff {
  const _$QuizStateTearOff();

// ignore: unused_element
  _QuizState call(
      {@required List<QuizOption> currentOptions,
      @required List<QuizOption> validOptions,
      @required List<int> alreadySeenOptions,
      @required VideoInfo currentVideo,
      @required bool areOptionsLocked,
      @required bool isAbleToCheck,
      @required bool isVideoPlaying,
      @required bool isChecked,
      @required Option<Failure> failureOption}) {
    return _QuizState(
      currentOptions: currentOptions,
      validOptions: validOptions,
      alreadySeenOptions: alreadySeenOptions,
      currentVideo: currentVideo,
      areOptionsLocked: areOptionsLocked,
      isAbleToCheck: isAbleToCheck,
      isVideoPlaying: isVideoPlaying,
      isChecked: isChecked,
      failureOption: failureOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QuizState = _$QuizStateTearOff();

/// @nodoc
mixin _$QuizState {
  List<QuizOption> get currentOptions;
  List<QuizOption> get validOptions;
  List<int> get alreadySeenOptions;
  VideoInfo get currentVideo;
  bool get areOptionsLocked;
  bool get isAbleToCheck;
  bool get isVideoPlaying;
  bool get isChecked;
  Option<Failure> get failureOption;

  $QuizStateCopyWith<QuizState> get copyWith;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res>;
  $Res call(
      {List<QuizOption> currentOptions,
      List<QuizOption> validOptions,
      List<int> alreadySeenOptions,
      VideoInfo currentVideo,
      bool areOptionsLocked,
      bool isAbleToCheck,
      bool isVideoPlaying,
      bool isChecked,
      Option<Failure> failureOption});

  $VideoInfoCopyWith<$Res> get currentVideo;
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res> implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  final QuizState _value;
  // ignore: unused_field
  final $Res Function(QuizState) _then;

  @override
  $Res call({
    Object currentOptions = freezed,
    Object validOptions = freezed,
    Object alreadySeenOptions = freezed,
    Object currentVideo = freezed,
    Object areOptionsLocked = freezed,
    Object isAbleToCheck = freezed,
    Object isVideoPlaying = freezed,
    Object isChecked = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_value.copyWith(
      currentOptions: currentOptions == freezed
          ? _value.currentOptions
          : currentOptions as List<QuizOption>,
      validOptions: validOptions == freezed
          ? _value.validOptions
          : validOptions as List<QuizOption>,
      alreadySeenOptions: alreadySeenOptions == freezed
          ? _value.alreadySeenOptions
          : alreadySeenOptions as List<int>,
      currentVideo: currentVideo == freezed
          ? _value.currentVideo
          : currentVideo as VideoInfo,
      areOptionsLocked: areOptionsLocked == freezed
          ? _value.areOptionsLocked
          : areOptionsLocked as bool,
      isAbleToCheck: isAbleToCheck == freezed
          ? _value.isAbleToCheck
          : isAbleToCheck as bool,
      isVideoPlaying: isVideoPlaying == freezed
          ? _value.isVideoPlaying
          : isVideoPlaying as bool,
      isChecked: isChecked == freezed ? _value.isChecked : isChecked as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<Failure>,
    ));
  }

  @override
  $VideoInfoCopyWith<$Res> get currentVideo {
    if (_value.currentVideo == null) {
      return null;
    }
    return $VideoInfoCopyWith<$Res>(_value.currentVideo, (value) {
      return _then(_value.copyWith(currentVideo: value));
    });
  }
}

/// @nodoc
abstract class _$QuizStateCopyWith<$Res> implements $QuizStateCopyWith<$Res> {
  factory _$QuizStateCopyWith(
          _QuizState value, $Res Function(_QuizState) then) =
      __$QuizStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<QuizOption> currentOptions,
      List<QuizOption> validOptions,
      List<int> alreadySeenOptions,
      VideoInfo currentVideo,
      bool areOptionsLocked,
      bool isAbleToCheck,
      bool isVideoPlaying,
      bool isChecked,
      Option<Failure> failureOption});

  @override
  $VideoInfoCopyWith<$Res> get currentVideo;
}

/// @nodoc
class __$QuizStateCopyWithImpl<$Res> extends _$QuizStateCopyWithImpl<$Res>
    implements _$QuizStateCopyWith<$Res> {
  __$QuizStateCopyWithImpl(_QuizState _value, $Res Function(_QuizState) _then)
      : super(_value, (v) => _then(v as _QuizState));

  @override
  _QuizState get _value => super._value as _QuizState;

  @override
  $Res call({
    Object currentOptions = freezed,
    Object validOptions = freezed,
    Object alreadySeenOptions = freezed,
    Object currentVideo = freezed,
    Object areOptionsLocked = freezed,
    Object isAbleToCheck = freezed,
    Object isVideoPlaying = freezed,
    Object isChecked = freezed,
    Object failureOption = freezed,
  }) {
    return _then(_QuizState(
      currentOptions: currentOptions == freezed
          ? _value.currentOptions
          : currentOptions as List<QuizOption>,
      validOptions: validOptions == freezed
          ? _value.validOptions
          : validOptions as List<QuizOption>,
      alreadySeenOptions: alreadySeenOptions == freezed
          ? _value.alreadySeenOptions
          : alreadySeenOptions as List<int>,
      currentVideo: currentVideo == freezed
          ? _value.currentVideo
          : currentVideo as VideoInfo,
      areOptionsLocked: areOptionsLocked == freezed
          ? _value.areOptionsLocked
          : areOptionsLocked as bool,
      isAbleToCheck: isAbleToCheck == freezed
          ? _value.isAbleToCheck
          : isAbleToCheck as bool,
      isVideoPlaying: isVideoPlaying == freezed
          ? _value.isVideoPlaying
          : isVideoPlaying as bool,
      isChecked: isChecked == freezed ? _value.isChecked : isChecked as bool,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption as Option<Failure>,
    ));
  }
}

/// @nodoc
class _$_QuizState implements _QuizState {
  const _$_QuizState(
      {@required this.currentOptions,
      @required this.validOptions,
      @required this.alreadySeenOptions,
      @required this.currentVideo,
      @required this.areOptionsLocked,
      @required this.isAbleToCheck,
      @required this.isVideoPlaying,
      @required this.isChecked,
      @required this.failureOption})
      : assert(currentOptions != null),
        assert(validOptions != null),
        assert(alreadySeenOptions != null),
        assert(currentVideo != null),
        assert(areOptionsLocked != null),
        assert(isAbleToCheck != null),
        assert(isVideoPlaying != null),
        assert(isChecked != null),
        assert(failureOption != null);

  @override
  final List<QuizOption> currentOptions;
  @override
  final List<QuizOption> validOptions;
  @override
  final List<int> alreadySeenOptions;
  @override
  final VideoInfo currentVideo;
  @override
  final bool areOptionsLocked;
  @override
  final bool isAbleToCheck;
  @override
  final bool isVideoPlaying;
  @override
  final bool isChecked;
  @override
  final Option<Failure> failureOption;

  @override
  String toString() {
    return 'QuizState(currentOptions: $currentOptions, validOptions: $validOptions, alreadySeenOptions: $alreadySeenOptions, currentVideo: $currentVideo, areOptionsLocked: $areOptionsLocked, isAbleToCheck: $isAbleToCheck, isVideoPlaying: $isVideoPlaying, isChecked: $isChecked, failureOption: $failureOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuizState &&
            (identical(other.currentOptions, currentOptions) ||
                const DeepCollectionEquality()
                    .equals(other.currentOptions, currentOptions)) &&
            (identical(other.validOptions, validOptions) ||
                const DeepCollectionEquality()
                    .equals(other.validOptions, validOptions)) &&
            (identical(other.alreadySeenOptions, alreadySeenOptions) ||
                const DeepCollectionEquality()
                    .equals(other.alreadySeenOptions, alreadySeenOptions)) &&
            (identical(other.currentVideo, currentVideo) ||
                const DeepCollectionEquality()
                    .equals(other.currentVideo, currentVideo)) &&
            (identical(other.areOptionsLocked, areOptionsLocked) ||
                const DeepCollectionEquality()
                    .equals(other.areOptionsLocked, areOptionsLocked)) &&
            (identical(other.isAbleToCheck, isAbleToCheck) ||
                const DeepCollectionEquality()
                    .equals(other.isAbleToCheck, isAbleToCheck)) &&
            (identical(other.isVideoPlaying, isVideoPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isVideoPlaying, isVideoPlaying)) &&
            (identical(other.isChecked, isChecked) ||
                const DeepCollectionEquality()
                    .equals(other.isChecked, isChecked)) &&
            (identical(other.failureOption, failureOption) ||
                const DeepCollectionEquality()
                    .equals(other.failureOption, failureOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentOptions) ^
      const DeepCollectionEquality().hash(validOptions) ^
      const DeepCollectionEquality().hash(alreadySeenOptions) ^
      const DeepCollectionEquality().hash(currentVideo) ^
      const DeepCollectionEquality().hash(areOptionsLocked) ^
      const DeepCollectionEquality().hash(isAbleToCheck) ^
      const DeepCollectionEquality().hash(isVideoPlaying) ^
      const DeepCollectionEquality().hash(isChecked) ^
      const DeepCollectionEquality().hash(failureOption);

  @override
  _$QuizStateCopyWith<_QuizState> get copyWith =>
      __$QuizStateCopyWithImpl<_QuizState>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {@required List<QuizOption> currentOptions,
      @required List<QuizOption> validOptions,
      @required List<int> alreadySeenOptions,
      @required VideoInfo currentVideo,
      @required bool areOptionsLocked,
      @required bool isAbleToCheck,
      @required bool isVideoPlaying,
      @required bool isChecked,
      @required Option<Failure> failureOption}) = _$_QuizState;

  @override
  List<QuizOption> get currentOptions;
  @override
  List<QuizOption> get validOptions;
  @override
  List<int> get alreadySeenOptions;
  @override
  VideoInfo get currentVideo;
  @override
  bool get areOptionsLocked;
  @override
  bool get isAbleToCheck;
  @override
  bool get isVideoPlaying;
  @override
  bool get isChecked;
  @override
  Option<Failure> get failureOption;
  @override
  _$QuizStateCopyWith<_QuizState> get copyWith;
}
