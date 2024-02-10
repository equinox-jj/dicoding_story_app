// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_stories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetStoriesResponse _$GetStoriesResponseFromJson(Map<String, dynamic> json) {
  return _GetStoriesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetStoriesResponse {
  bool? get error => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ListStoryResponse? get listStory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStoriesResponseCopyWith<GetStoriesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStoriesResponseCopyWith<$Res> {
  factory $GetStoriesResponseCopyWith(
          GetStoriesResponse value, $Res Function(GetStoriesResponse) then) =
      _$GetStoriesResponseCopyWithImpl<$Res, GetStoriesResponse>;
  @useResult
  $Res call({bool? error, String? message, ListStoryResponse? listStory});

  $ListStoryResponseCopyWith<$Res>? get listStory;
}

/// @nodoc
class _$GetStoriesResponseCopyWithImpl<$Res, $Val extends GetStoriesResponse>
    implements $GetStoriesResponseCopyWith<$Res> {
  _$GetStoriesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? listStory = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      listStory: freezed == listStory
          ? _value.listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as ListStoryResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListStoryResponseCopyWith<$Res>? get listStory {
    if (_value.listStory == null) {
      return null;
    }

    return $ListStoryResponseCopyWith<$Res>(_value.listStory!, (value) {
      return _then(_value.copyWith(listStory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetStoriesResponseImplCopyWith<$Res>
    implements $GetStoriesResponseCopyWith<$Res> {
  factory _$$GetStoriesResponseImplCopyWith(_$GetStoriesResponseImpl value,
          $Res Function(_$GetStoriesResponseImpl) then) =
      __$$GetStoriesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? error, String? message, ListStoryResponse? listStory});

  @override
  $ListStoryResponseCopyWith<$Res>? get listStory;
}

/// @nodoc
class __$$GetStoriesResponseImplCopyWithImpl<$Res>
    extends _$GetStoriesResponseCopyWithImpl<$Res, _$GetStoriesResponseImpl>
    implements _$$GetStoriesResponseImplCopyWith<$Res> {
  __$$GetStoriesResponseImplCopyWithImpl(_$GetStoriesResponseImpl _value,
      $Res Function(_$GetStoriesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? message = freezed,
    Object? listStory = freezed,
  }) {
    return _then(_$GetStoriesResponseImpl(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      listStory: freezed == listStory
          ? _value.listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as ListStoryResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetStoriesResponseImpl implements _GetStoriesResponse {
  _$GetStoriesResponseImpl(
      {required this.error, required this.message, required this.listStory});

  factory _$GetStoriesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetStoriesResponseImplFromJson(json);

  @override
  final bool? error;
  @override
  final String? message;
  @override
  final ListStoryResponse? listStory;

  @override
  String toString() {
    return 'GetStoriesResponse(error: $error, message: $message, listStory: $listStory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetStoriesResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.listStory, listStory) ||
                other.listStory == listStory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, listStory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetStoriesResponseImplCopyWith<_$GetStoriesResponseImpl> get copyWith =>
      __$$GetStoriesResponseImplCopyWithImpl<_$GetStoriesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetStoriesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetStoriesResponse implements GetStoriesResponse {
  factory _GetStoriesResponse(
      {required final bool? error,
      required final String? message,
      required final ListStoryResponse? listStory}) = _$GetStoriesResponseImpl;

  factory _GetStoriesResponse.fromJson(Map<String, dynamic> json) =
      _$GetStoriesResponseImpl.fromJson;

  @override
  bool? get error;
  @override
  String? get message;
  @override
  ListStoryResponse? get listStory;
  @override
  @JsonKey(ignore: true)
  _$$GetStoriesResponseImplCopyWith<_$GetStoriesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
