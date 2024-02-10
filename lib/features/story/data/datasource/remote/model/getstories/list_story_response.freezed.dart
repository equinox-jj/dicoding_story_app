// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_story_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListStoryResponse _$ListStoryResponseFromJson(Map<String, dynamic> json) {
  return _ListStoryResponse.fromJson(json);
}

/// @nodoc
mixin _$ListStoryResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  num? get lat => throw _privateConstructorUsedError;
  num? get long => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListStoryResponseCopyWith<ListStoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStoryResponseCopyWith<$Res> {
  factory $ListStoryResponseCopyWith(
          ListStoryResponse value, $Res Function(ListStoryResponse) then) =
      _$ListStoryResponseCopyWithImpl<$Res, ListStoryResponse>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? photoUrl,
      String? createdAt,
      num? lat,
      num? long});
}

/// @nodoc
class _$ListStoryResponseCopyWithImpl<$Res, $Val extends ListStoryResponse>
    implements $ListStoryResponseCopyWith<$Res> {
  _$ListStoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStoryResponseImplCopyWith<$Res>
    implements $ListStoryResponseCopyWith<$Res> {
  factory _$$ListStoryResponseImplCopyWith(_$ListStoryResponseImpl value,
          $Res Function(_$ListStoryResponseImpl) then) =
      __$$ListStoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? description,
      String? photoUrl,
      String? createdAt,
      num? lat,
      num? long});
}

/// @nodoc
class __$$ListStoryResponseImplCopyWithImpl<$Res>
    extends _$ListStoryResponseCopyWithImpl<$Res, _$ListStoryResponseImpl>
    implements _$$ListStoryResponseImplCopyWith<$Res> {
  __$$ListStoryResponseImplCopyWithImpl(_$ListStoryResponseImpl _value,
      $Res Function(_$ListStoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? createdAt = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_$ListStoryResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as num?,
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListStoryResponseImpl implements _ListStoryResponse {
  _$ListStoryResponseImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.photoUrl,
      required this.createdAt,
      required this.lat,
      required this.long});

  factory _$ListStoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListStoryResponseImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? photoUrl;
  @override
  final String? createdAt;
  @override
  final num? lat;
  @override
  final num? long;

  @override
  String toString() {
    return 'ListStoryResponse(id: $id, name: $name, description: $description, photoUrl: $photoUrl, createdAt: $createdAt, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, description, photoUrl, createdAt, lat, long);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStoryResponseImplCopyWith<_$ListStoryResponseImpl> get copyWith =>
      __$$ListStoryResponseImplCopyWithImpl<_$ListStoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListStoryResponseImplToJson(
      this,
    );
  }
}

abstract class _ListStoryResponse implements ListStoryResponse {
  factory _ListStoryResponse(
      {required final String? id,
      required final String? name,
      required final String? description,
      required final String? photoUrl,
      required final String? createdAt,
      required final num? lat,
      required final num? long}) = _$ListStoryResponseImpl;

  factory _ListStoryResponse.fromJson(Map<String, dynamic> json) =
      _$ListStoryResponseImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get photoUrl;
  @override
  String? get createdAt;
  @override
  num? get lat;
  @override
  num? get long;
  @override
  @JsonKey(ignore: true)
  _$$ListStoryResponseImplCopyWith<_$ListStoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
