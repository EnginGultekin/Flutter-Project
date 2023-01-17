// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Record _$$_RecordFromJson(Map<String, dynamic> json) => _$_Record(
      weight: json['weight'] as int,
      datTime: DateTime.parse(json['datTime'] as String),
      note: json['note'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_RecordToJson(_$_Record instance) => <String, dynamic>{
      'weight': instance.weight,
      'datTime': instance.datTime.toIso8601String(),
      'note': instance.note,
      'photoUrl': instance.photoUrl,
    };
