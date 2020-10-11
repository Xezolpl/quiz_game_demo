// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizOption _$_$_QuizOptionFromJson(Map<String, dynamic> json) {
  return _$_QuizOption(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    param1: json['param1'] as String,
    param2: json['param2'] as String,
    param3: json['param3'] as String,
    param4: (json['param4'] as num)?.toDouble(),
    param5: json['param5'] as int,
    param6: json['param6'] as int,
    param7: json['param7'] as String,
    param8: json['param8'] as int,
    param9: (json['param9'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_QuizOptionToJson(_$_QuizOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'param1': instance.param1,
      'param2': instance.param2,
      'param3': instance.param3,
      'param4': instance.param4,
      'param5': instance.param5,
      'param6': instance.param6,
      'param7': instance.param7,
      'param8': instance.param8,
      'param9': instance.param9,
    };
