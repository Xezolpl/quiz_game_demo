// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'video_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VideoInfoTearOff {
  const _$VideoInfoTearOff();

// ignore: unused_element
  _VideoInfo call(
      {@required int id,
      @required List<int> optionsIds,
      @required List<Duration> optionsTimes}) {
    return _VideoInfo(
      id: id,
      optionsIds: optionsIds,
      optionsTimes: optionsTimes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideoInfo = _$VideoInfoTearOff();

/// @nodoc
mixin _$VideoInfo {
  int get id;
  List<int> get optionsIds;
  List<Duration> get optionsTimes;

  $VideoInfoCopyWith<VideoInfo> get copyWith;
}

/// @nodoc
abstract class $VideoInfoCopyWith<$Res> {
  factory $VideoInfoCopyWith(VideoInfo value, $Res Function(VideoInfo) then) =
      _$VideoInfoCopyWithImpl<$Res>;
  $Res call({int id, List<int> optionsIds, List<Duration> optionsTimes});
}

/// @nodoc
class _$VideoInfoCopyWithImpl<$Res> implements $VideoInfoCopyWith<$Res> {
  _$VideoInfoCopyWithImpl(this._value, this._then);

  final VideoInfo _value;
  // ignore: unused_field
  final $Res Function(VideoInfo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object optionsIds = freezed,
    Object optionsTimes = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      optionsIds:
          optionsIds == freezed ? _value.optionsIds : optionsIds as List<int>,
      optionsTimes: optionsTimes == freezed
          ? _value.optionsTimes
          : optionsTimes as List<Duration>,
    ));
  }
}

/// @nodoc
abstract class _$VideoInfoCopyWith<$Res> implements $VideoInfoCopyWith<$Res> {
  factory _$VideoInfoCopyWith(
          _VideoInfo value, $Res Function(_VideoInfo) then) =
      __$VideoInfoCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<int> optionsIds, List<Duration> optionsTimes});
}

/// @nodoc
class __$VideoInfoCopyWithImpl<$Res> extends _$VideoInfoCopyWithImpl<$Res>
    implements _$VideoInfoCopyWith<$Res> {
  __$VideoInfoCopyWithImpl(_VideoInfo _value, $Res Function(_VideoInfo) _then)
      : super(_value, (v) => _then(v as _VideoInfo));

  @override
  _VideoInfo get _value => super._value as _VideoInfo;

  @override
  $Res call({
    Object id = freezed,
    Object optionsIds = freezed,
    Object optionsTimes = freezed,
  }) {
    return _then(_VideoInfo(
      id: id == freezed ? _value.id : id as int,
      optionsIds:
          optionsIds == freezed ? _value.optionsIds : optionsIds as List<int>,
      optionsTimes: optionsTimes == freezed
          ? _value.optionsTimes
          : optionsTimes as List<Duration>,
    ));
  }
}

/// @nodoc
class _$_VideoInfo implements _VideoInfo {
  const _$_VideoInfo(
      {@required this.id,
      @required this.optionsIds,
      @required this.optionsTimes})
      : assert(id != null),
        assert(optionsIds != null),
        assert(optionsTimes != null);

  @override
  final int id;
  @override
  final List<int> optionsIds;
  @override
  final List<Duration> optionsTimes;

  @override
  String toString() {
    return 'VideoInfo(id: $id, optionsIds: $optionsIds, optionsTimes: $optionsTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.optionsIds, optionsIds) ||
                const DeepCollectionEquality()
                    .equals(other.optionsIds, optionsIds)) &&
            (identical(other.optionsTimes, optionsTimes) ||
                const DeepCollectionEquality()
                    .equals(other.optionsTimes, optionsTimes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(optionsIds) ^
      const DeepCollectionEquality().hash(optionsTimes);

  @override
  _$VideoInfoCopyWith<_VideoInfo> get copyWith =>
      __$VideoInfoCopyWithImpl<_VideoInfo>(this, _$identity);
}

abstract class _VideoInfo implements VideoInfo {
  const factory _VideoInfo(
      {@required int id,
      @required List<int> optionsIds,
      @required List<Duration> optionsTimes}) = _$_VideoInfo;

  @override
  int get id;
  @override
  List<int> get optionsIds;
  @override
  List<Duration> get optionsTimes;
  @override
  _$VideoInfoCopyWith<_VideoInfo> get copyWith;
}
