// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Record _$RecordFromJson(Map<String, dynamic> json) {
  return _Record.fromJson(json);
}

/// @nodoc
mixin _$Record {
  int get weight => throw _privateConstructorUsedError;
  DateTime get datTime => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordCopyWith<Record> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordCopyWith<$Res> {
  factory $RecordCopyWith(Record value, $Res Function(Record) then) =
      _$RecordCopyWithImpl<$Res>;
  $Res call({int weight, DateTime datTime, String? note, String? photoUrl});
}

/// @nodoc
class _$RecordCopyWithImpl<$Res> implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._value, this._then);

  final Record _value;
  // ignore: unused_field
  final $Res Function(Record) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? datTime = freezed,
    Object? note = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      datTime: datTime == freezed
          ? _value.datTime
          : datTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$$_RecordCopyWith(_$_Record value, $Res Function(_$_Record) then) =
      __$$_RecordCopyWithImpl<$Res>;
  @override
  $Res call({int weight, DateTime datTime, String? note, String? photoUrl});
}

/// @nodoc
class __$$_RecordCopyWithImpl<$Res> extends _$RecordCopyWithImpl<$Res>
    implements _$$_RecordCopyWith<$Res> {
  __$$_RecordCopyWithImpl(_$_Record _value, $Res Function(_$_Record) _then)
      : super(_value, (v) => _then(v as _$_Record));

  @override
  _$_Record get _value => super._value as _$_Record;

  @override
  $Res call({
    Object? weight = freezed,
    Object? datTime = freezed,
    Object? note = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_Record(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      datTime: datTime == freezed
          ? _value.datTime
          : datTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Record implements _Record {
  _$_Record(
      {required this.weight, required this.datTime, this.note, this.photoUrl});

  factory _$_Record.fromJson(Map<String, dynamic> json) =>
      _$$_RecordFromJson(json);

  @override
  final int weight;
  @override
  final DateTime datTime;
  @override
  final String? note;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'Record(weight: $weight, datTime: $datTime, note: $note, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Record &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.datTime, datTime) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.photoUrl, photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(datTime),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(photoUrl));

  @JsonKey(ignore: true)
  @override
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      __$$_RecordCopyWithImpl<_$_Record>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordToJson(this);
  }
}

abstract class _Record implements Record {
  factory _Record(
      {required final int weight,
      required final DateTime datTime,
      final String? note,
      final String? photoUrl}) = _$_Record;

  factory _Record.fromJson(Map<String, dynamic> json) = _$_Record.fromJson;

  @override
  int get weight => throw _privateConstructorUsedError;
  @override
  DateTime get datTime => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  String? get photoUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RecordCopyWith<_$_Record> get copyWith =>
      throw _privateConstructorUsedError;
}
