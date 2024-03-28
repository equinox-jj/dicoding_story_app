// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddStoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, File image, double? lat, double? lon)
        uploadStory,
    required TResult Function() pickImageGallery,
    required TResult Function() pickImageCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult? Function()? pickImageGallery,
    TResult? Function()? pickImageCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult Function()? pickImageGallery,
    TResult Function()? pickImageCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadStory value) uploadStory,
    required TResult Function(_PickImageGallery value) pickImageGallery,
    required TResult Function(_PickImageCamera value) pickImageCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStory value)? uploadStory,
    TResult? Function(_PickImageGallery value)? pickImageGallery,
    TResult? Function(_PickImageCamera value)? pickImageCamera,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStory value)? uploadStory,
    TResult Function(_PickImageGallery value)? pickImageGallery,
    TResult Function(_PickImageCamera value)? pickImageCamera,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoryEventCopyWith<$Res> {
  factory $AddStoryEventCopyWith(
          AddStoryEvent value, $Res Function(AddStoryEvent) then) =
      _$AddStoryEventCopyWithImpl<$Res, AddStoryEvent>;
}

/// @nodoc
class _$AddStoryEventCopyWithImpl<$Res, $Val extends AddStoryEvent>
    implements $AddStoryEventCopyWith<$Res> {
  _$AddStoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadStoryImplCopyWith<$Res> {
  factory _$$UploadStoryImplCopyWith(
          _$UploadStoryImpl value, $Res Function(_$UploadStoryImpl) then) =
      __$$UploadStoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description, File image, double? lat, double? lon});
}

/// @nodoc
class __$$UploadStoryImplCopyWithImpl<$Res>
    extends _$AddStoryEventCopyWithImpl<$Res, _$UploadStoryImpl>
    implements _$$UploadStoryImplCopyWith<$Res> {
  __$$UploadStoryImplCopyWithImpl(
      _$UploadStoryImpl _value, $Res Function(_$UploadStoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? image = null,
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$UploadStoryImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$UploadStoryImpl implements _UploadStory {
  const _$UploadStoryImpl(
      {required this.description, required this.image, this.lat, this.lon});

  @override
  final String description;
  @override
  final File image;
  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'AddStoryEvent.uploadStory(description: $description, image: $image, lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadStoryImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description, image, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadStoryImplCopyWith<_$UploadStoryImpl> get copyWith =>
      __$$UploadStoryImplCopyWithImpl<_$UploadStoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, File image, double? lat, double? lon)
        uploadStory,
    required TResult Function() pickImageGallery,
    required TResult Function() pickImageCamera,
  }) {
    return uploadStory(description, image, lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult? Function()? pickImageGallery,
    TResult? Function()? pickImageCamera,
  }) {
    return uploadStory?.call(description, image, lat, lon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult Function()? pickImageGallery,
    TResult Function()? pickImageCamera,
    required TResult orElse(),
  }) {
    if (uploadStory != null) {
      return uploadStory(description, image, lat, lon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadStory value) uploadStory,
    required TResult Function(_PickImageGallery value) pickImageGallery,
    required TResult Function(_PickImageCamera value) pickImageCamera,
  }) {
    return uploadStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStory value)? uploadStory,
    TResult? Function(_PickImageGallery value)? pickImageGallery,
    TResult? Function(_PickImageCamera value)? pickImageCamera,
  }) {
    return uploadStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStory value)? uploadStory,
    TResult Function(_PickImageGallery value)? pickImageGallery,
    TResult Function(_PickImageCamera value)? pickImageCamera,
    required TResult orElse(),
  }) {
    if (uploadStory != null) {
      return uploadStory(this);
    }
    return orElse();
  }
}

abstract class _UploadStory implements AddStoryEvent {
  const factory _UploadStory(
      {required final String description,
      required final File image,
      final double? lat,
      final double? lon}) = _$UploadStoryImpl;

  String get description;
  File get image;
  double? get lat;
  double? get lon;
  @JsonKey(ignore: true)
  _$$UploadStoryImplCopyWith<_$UploadStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickImageGalleryImplCopyWith<$Res> {
  factory _$$PickImageGalleryImplCopyWith(_$PickImageGalleryImpl value,
          $Res Function(_$PickImageGalleryImpl) then) =
      __$$PickImageGalleryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageGalleryImplCopyWithImpl<$Res>
    extends _$AddStoryEventCopyWithImpl<$Res, _$PickImageGalleryImpl>
    implements _$$PickImageGalleryImplCopyWith<$Res> {
  __$$PickImageGalleryImplCopyWithImpl(_$PickImageGalleryImpl _value,
      $Res Function(_$PickImageGalleryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageGalleryImpl implements _PickImageGallery {
  const _$PickImageGalleryImpl();

  @override
  String toString() {
    return 'AddStoryEvent.pickImageGallery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageGalleryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, File image, double? lat, double? lon)
        uploadStory,
    required TResult Function() pickImageGallery,
    required TResult Function() pickImageCamera,
  }) {
    return pickImageGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult? Function()? pickImageGallery,
    TResult? Function()? pickImageCamera,
  }) {
    return pickImageGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult Function()? pickImageGallery,
    TResult Function()? pickImageCamera,
    required TResult orElse(),
  }) {
    if (pickImageGallery != null) {
      return pickImageGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadStory value) uploadStory,
    required TResult Function(_PickImageGallery value) pickImageGallery,
    required TResult Function(_PickImageCamera value) pickImageCamera,
  }) {
    return pickImageGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStory value)? uploadStory,
    TResult? Function(_PickImageGallery value)? pickImageGallery,
    TResult? Function(_PickImageCamera value)? pickImageCamera,
  }) {
    return pickImageGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStory value)? uploadStory,
    TResult Function(_PickImageGallery value)? pickImageGallery,
    TResult Function(_PickImageCamera value)? pickImageCamera,
    required TResult orElse(),
  }) {
    if (pickImageGallery != null) {
      return pickImageGallery(this);
    }
    return orElse();
  }
}

abstract class _PickImageGallery implements AddStoryEvent {
  const factory _PickImageGallery() = _$PickImageGalleryImpl;
}

/// @nodoc
abstract class _$$PickImageCameraImplCopyWith<$Res> {
  factory _$$PickImageCameraImplCopyWith(_$PickImageCameraImpl value,
          $Res Function(_$PickImageCameraImpl) then) =
      __$$PickImageCameraImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageCameraImplCopyWithImpl<$Res>
    extends _$AddStoryEventCopyWithImpl<$Res, _$PickImageCameraImpl>
    implements _$$PickImageCameraImplCopyWith<$Res> {
  __$$PickImageCameraImplCopyWithImpl(
      _$PickImageCameraImpl _value, $Res Function(_$PickImageCameraImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageCameraImpl implements _PickImageCamera {
  const _$PickImageCameraImpl();

  @override
  String toString() {
    return 'AddStoryEvent.pickImageCamera()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageCameraImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String description, File image, double? lat, double? lon)
        uploadStory,
    required TResult Function() pickImageGallery,
    required TResult Function() pickImageCamera,
  }) {
    return pickImageCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult? Function()? pickImageGallery,
    TResult? Function()? pickImageCamera,
  }) {
    return pickImageCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description, File image, double? lat, double? lon)?
        uploadStory,
    TResult Function()? pickImageGallery,
    TResult Function()? pickImageCamera,
    required TResult orElse(),
  }) {
    if (pickImageCamera != null) {
      return pickImageCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadStory value) uploadStory,
    required TResult Function(_PickImageGallery value) pickImageGallery,
    required TResult Function(_PickImageCamera value) pickImageCamera,
  }) {
    return pickImageCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadStory value)? uploadStory,
    TResult? Function(_PickImageGallery value)? pickImageGallery,
    TResult? Function(_PickImageCamera value)? pickImageCamera,
  }) {
    return pickImageCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadStory value)? uploadStory,
    TResult Function(_PickImageGallery value)? pickImageGallery,
    TResult Function(_PickImageCamera value)? pickImageCamera,
    required TResult orElse(),
  }) {
    if (pickImageCamera != null) {
      return pickImageCamera(this);
    }
    return orElse();
  }
}

abstract class _PickImageCamera implements AddStoryEvent {
  const factory _PickImageCamera() = _$PickImageCameraImpl;
}

/// @nodoc
mixin _$AddStoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(AddNewStoryResponse? response) success,
    required TResult Function(XFile? image) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(AddNewStoryResponse? response)? success,
    TResult? Function(XFile? image)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(AddNewStoryResponse? response)? success,
    TResult Function(XFile? image)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStoryInitial value) initial,
    required TResult Function(AddStoryLoading value) loading,
    required TResult Function(AddStoryError value) error,
    required TResult Function(AddStorySuccess value) success,
    required TResult Function(AddStoryPickImage value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStoryInitial value)? initial,
    TResult? Function(AddStoryLoading value)? loading,
    TResult? Function(AddStoryError value)? error,
    TResult? Function(AddStorySuccess value)? success,
    TResult? Function(AddStoryPickImage value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStoryInitial value)? initial,
    TResult Function(AddStoryLoading value)? loading,
    TResult Function(AddStoryError value)? error,
    TResult Function(AddStorySuccess value)? success,
    TResult Function(AddStoryPickImage value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddStoryStateCopyWith<$Res> {
  factory $AddStoryStateCopyWith(
          AddStoryState value, $Res Function(AddStoryState) then) =
      _$AddStoryStateCopyWithImpl<$Res, AddStoryState>;
}

/// @nodoc
class _$AddStoryStateCopyWithImpl<$Res, $Val extends AddStoryState>
    implements $AddStoryStateCopyWith<$Res> {
  _$AddStoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddStoryInitialImplCopyWith<$Res> {
  factory _$$AddStoryInitialImplCopyWith(_$AddStoryInitialImpl value,
          $Res Function(_$AddStoryInitialImpl) then) =
      __$$AddStoryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddStoryInitialImplCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$AddStoryInitialImpl>
    implements _$$AddStoryInitialImplCopyWith<$Res> {
  __$$AddStoryInitialImplCopyWithImpl(
      _$AddStoryInitialImpl _value, $Res Function(_$AddStoryInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddStoryInitialImpl implements AddStoryInitial {
  const _$AddStoryInitialImpl();

  @override
  String toString() {
    return 'AddStoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddStoryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(AddNewStoryResponse? response) success,
    required TResult Function(XFile? image) pickImage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(AddNewStoryResponse? response)? success,
    TResult? Function(XFile? image)? pickImage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(AddNewStoryResponse? response)? success,
    TResult Function(XFile? image)? pickImage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStoryInitial value) initial,
    required TResult Function(AddStoryLoading value) loading,
    required TResult Function(AddStoryError value) error,
    required TResult Function(AddStorySuccess value) success,
    required TResult Function(AddStoryPickImage value) pickImage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStoryInitial value)? initial,
    TResult? Function(AddStoryLoading value)? loading,
    TResult? Function(AddStoryError value)? error,
    TResult? Function(AddStorySuccess value)? success,
    TResult? Function(AddStoryPickImage value)? pickImage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStoryInitial value)? initial,
    TResult Function(AddStoryLoading value)? loading,
    TResult Function(AddStoryError value)? error,
    TResult Function(AddStorySuccess value)? success,
    TResult Function(AddStoryPickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddStoryInitial implements AddStoryState {
  const factory AddStoryInitial() = _$AddStoryInitialImpl;
}

/// @nodoc
abstract class _$$AddStoryLoadingImplCopyWith<$Res> {
  factory _$$AddStoryLoadingImplCopyWith(_$AddStoryLoadingImpl value,
          $Res Function(_$AddStoryLoadingImpl) then) =
      __$$AddStoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddStoryLoadingImplCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$AddStoryLoadingImpl>
    implements _$$AddStoryLoadingImplCopyWith<$Res> {
  __$$AddStoryLoadingImplCopyWithImpl(
      _$AddStoryLoadingImpl _value, $Res Function(_$AddStoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddStoryLoadingImpl implements AddStoryLoading {
  const _$AddStoryLoadingImpl();

  @override
  String toString() {
    return 'AddStoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddStoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(AddNewStoryResponse? response) success,
    required TResult Function(XFile? image) pickImage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(AddNewStoryResponse? response)? success,
    TResult? Function(XFile? image)? pickImage,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(AddNewStoryResponse? response)? success,
    TResult Function(XFile? image)? pickImage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStoryInitial value) initial,
    required TResult Function(AddStoryLoading value) loading,
    required TResult Function(AddStoryError value) error,
    required TResult Function(AddStorySuccess value) success,
    required TResult Function(AddStoryPickImage value) pickImage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStoryInitial value)? initial,
    TResult? Function(AddStoryLoading value)? loading,
    TResult? Function(AddStoryError value)? error,
    TResult? Function(AddStorySuccess value)? success,
    TResult? Function(AddStoryPickImage value)? pickImage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStoryInitial value)? initial,
    TResult Function(AddStoryLoading value)? loading,
    TResult Function(AddStoryError value)? error,
    TResult Function(AddStorySuccess value)? success,
    TResult Function(AddStoryPickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddStoryLoading implements AddStoryState {
  const factory AddStoryLoading() = _$AddStoryLoadingImpl;
}

/// @nodoc
abstract class _$$AddStoryErrorImplCopyWith<$Res> {
  factory _$$AddStoryErrorImplCopyWith(
          _$AddStoryErrorImpl value, $Res Function(_$AddStoryErrorImpl) then) =
      __$$AddStoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddStoryErrorImplCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$AddStoryErrorImpl>
    implements _$$AddStoryErrorImplCopyWith<$Res> {
  __$$AddStoryErrorImplCopyWithImpl(
      _$AddStoryErrorImpl _value, $Res Function(_$AddStoryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddStoryErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddStoryErrorImpl implements AddStoryError {
  const _$AddStoryErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AddStoryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoryErrorImplCopyWith<_$AddStoryErrorImpl> get copyWith =>
      __$$AddStoryErrorImplCopyWithImpl<_$AddStoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(AddNewStoryResponse? response) success,
    required TResult Function(XFile? image) pickImage,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(AddNewStoryResponse? response)? success,
    TResult? Function(XFile? image)? pickImage,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(AddNewStoryResponse? response)? success,
    TResult Function(XFile? image)? pickImage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStoryInitial value) initial,
    required TResult Function(AddStoryLoading value) loading,
    required TResult Function(AddStoryError value) error,
    required TResult Function(AddStorySuccess value) success,
    required TResult Function(AddStoryPickImage value) pickImage,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStoryInitial value)? initial,
    TResult? Function(AddStoryLoading value)? loading,
    TResult? Function(AddStoryError value)? error,
    TResult? Function(AddStorySuccess value)? success,
    TResult? Function(AddStoryPickImage value)? pickImage,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStoryInitial value)? initial,
    TResult Function(AddStoryLoading value)? loading,
    TResult Function(AddStoryError value)? error,
    TResult Function(AddStorySuccess value)? success,
    TResult Function(AddStoryPickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddStoryError implements AddStoryState {
  const factory AddStoryError({final String message}) = _$AddStoryErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AddStoryErrorImplCopyWith<_$AddStoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddStorySuccessImplCopyWith<$Res> {
  factory _$$AddStorySuccessImplCopyWith(_$AddStorySuccessImpl value,
          $Res Function(_$AddStorySuccessImpl) then) =
      __$$AddStorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddNewStoryResponse? response});

  $AddNewStoryResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$AddStorySuccessImplCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$AddStorySuccessImpl>
    implements _$$AddStorySuccessImplCopyWith<$Res> {
  __$$AddStorySuccessImplCopyWithImpl(
      _$AddStorySuccessImpl _value, $Res Function(_$AddStorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$AddStorySuccessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AddNewStoryResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddNewStoryResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $AddNewStoryResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$AddStorySuccessImpl implements AddStorySuccess {
  const _$AddStorySuccessImpl({this.response});

  @override
  final AddNewStoryResponse? response;

  @override
  String toString() {
    return 'AddStoryState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStorySuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStorySuccessImplCopyWith<_$AddStorySuccessImpl> get copyWith =>
      __$$AddStorySuccessImplCopyWithImpl<_$AddStorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(AddNewStoryResponse? response) success,
    required TResult Function(XFile? image) pickImage,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(AddNewStoryResponse? response)? success,
    TResult? Function(XFile? image)? pickImage,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(AddNewStoryResponse? response)? success,
    TResult Function(XFile? image)? pickImage,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStoryInitial value) initial,
    required TResult Function(AddStoryLoading value) loading,
    required TResult Function(AddStoryError value) error,
    required TResult Function(AddStorySuccess value) success,
    required TResult Function(AddStoryPickImage value) pickImage,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStoryInitial value)? initial,
    TResult? Function(AddStoryLoading value)? loading,
    TResult? Function(AddStoryError value)? error,
    TResult? Function(AddStorySuccess value)? success,
    TResult? Function(AddStoryPickImage value)? pickImage,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStoryInitial value)? initial,
    TResult Function(AddStoryLoading value)? loading,
    TResult Function(AddStoryError value)? error,
    TResult Function(AddStorySuccess value)? success,
    TResult Function(AddStoryPickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddStorySuccess implements AddStoryState {
  const factory AddStorySuccess({final AddNewStoryResponse? response}) =
      _$AddStorySuccessImpl;

  AddNewStoryResponse? get response;
  @JsonKey(ignore: true)
  _$$AddStorySuccessImplCopyWith<_$AddStorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddStoryPickImageImplCopyWith<$Res> {
  factory _$$AddStoryPickImageImplCopyWith(_$AddStoryPickImageImpl value,
          $Res Function(_$AddStoryPickImageImpl) then) =
      __$$AddStoryPickImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image});
}

/// @nodoc
class __$$AddStoryPickImageImplCopyWithImpl<$Res>
    extends _$AddStoryStateCopyWithImpl<$Res, _$AddStoryPickImageImpl>
    implements _$$AddStoryPickImageImplCopyWith<$Res> {
  __$$AddStoryPickImageImplCopyWithImpl(_$AddStoryPickImageImpl _value,
      $Res Function(_$AddStoryPickImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$AddStoryPickImageImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$AddStoryPickImageImpl implements AddStoryPickImage {
  const _$AddStoryPickImageImpl({this.image});

  @override
  final XFile? image;

  @override
  String toString() {
    return 'AddStoryState.pickImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStoryPickImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddStoryPickImageImplCopyWith<_$AddStoryPickImageImpl> get copyWith =>
      __$$AddStoryPickImageImplCopyWithImpl<_$AddStoryPickImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(AddNewStoryResponse? response) success,
    required TResult Function(XFile? image) pickImage,
  }) {
    return pickImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(AddNewStoryResponse? response)? success,
    TResult? Function(XFile? image)? pickImage,
  }) {
    return pickImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(AddNewStoryResponse? response)? success,
    TResult Function(XFile? image)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddStoryInitial value) initial,
    required TResult Function(AddStoryLoading value) loading,
    required TResult Function(AddStoryError value) error,
    required TResult Function(AddStorySuccess value) success,
    required TResult Function(AddStoryPickImage value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddStoryInitial value)? initial,
    TResult? Function(AddStoryLoading value)? loading,
    TResult? Function(AddStoryError value)? error,
    TResult? Function(AddStorySuccess value)? success,
    TResult? Function(AddStoryPickImage value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddStoryInitial value)? initial,
    TResult Function(AddStoryLoading value)? loading,
    TResult Function(AddStoryError value)? error,
    TResult Function(AddStorySuccess value)? success,
    TResult Function(AddStoryPickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class AddStoryPickImage implements AddStoryState {
  const factory AddStoryPickImage({final XFile? image}) =
      _$AddStoryPickImageImpl;

  XFile? get image;
  @JsonKey(ignore: true)
  _$$AddStoryPickImageImplCopyWith<_$AddStoryPickImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
