// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_story_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListStoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? size, int? location) getListStory,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? size, int? location)? getListStory,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? size, int? location)? getListStory,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetListStory value) getListStory,
    required TResult Function(_OnLogoutClicked value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetListStory value)? getListStory,
    TResult? Function(_OnLogoutClicked value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetListStory value)? getListStory,
    TResult Function(_OnLogoutClicked value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStoryEventCopyWith<$Res> {
  factory $ListStoryEventCopyWith(
          ListStoryEvent value, $Res Function(ListStoryEvent) then) =
      _$ListStoryEventCopyWithImpl<$Res, ListStoryEvent>;
}

/// @nodoc
class _$ListStoryEventCopyWithImpl<$Res, $Val extends ListStoryEvent>
    implements $ListStoryEventCopyWith<$Res> {
  _$ListStoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGetListStoryImplCopyWith<$Res> {
  factory _$$OnGetListStoryImplCopyWith(_$OnGetListStoryImpl value,
          $Res Function(_$OnGetListStoryImpl) then) =
      __$$OnGetListStoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? page, int? size, int? location});
}

/// @nodoc
class __$$OnGetListStoryImplCopyWithImpl<$Res>
    extends _$ListStoryEventCopyWithImpl<$Res, _$OnGetListStoryImpl>
    implements _$$OnGetListStoryImplCopyWith<$Res> {
  __$$OnGetListStoryImplCopyWithImpl(
      _$OnGetListStoryImpl _value, $Res Function(_$OnGetListStoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? size = freezed,
    Object? location = freezed,
  }) {
    return _then(_$OnGetListStoryImpl(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$OnGetListStoryImpl implements _OnGetListStory {
  const _$OnGetListStoryImpl({this.page, this.size, this.location});

  @override
  final int? page;
  @override
  final int? size;
  @override
  final int? location;

  @override
  String toString() {
    return 'ListStoryEvent.getListStory(page: $page, size: $size, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGetListStoryImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, size, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGetListStoryImplCopyWith<_$OnGetListStoryImpl> get copyWith =>
      __$$OnGetListStoryImplCopyWithImpl<_$OnGetListStoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? size, int? location) getListStory,
    required TResult Function() logout,
  }) {
    return getListStory(page, size, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? size, int? location)? getListStory,
    TResult? Function()? logout,
  }) {
    return getListStory?.call(page, size, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? size, int? location)? getListStory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getListStory != null) {
      return getListStory(page, size, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetListStory value) getListStory,
    required TResult Function(_OnLogoutClicked value) logout,
  }) {
    return getListStory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetListStory value)? getListStory,
    TResult? Function(_OnLogoutClicked value)? logout,
  }) {
    return getListStory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetListStory value)? getListStory,
    TResult Function(_OnLogoutClicked value)? logout,
    required TResult orElse(),
  }) {
    if (getListStory != null) {
      return getListStory(this);
    }
    return orElse();
  }
}

abstract class _OnGetListStory implements ListStoryEvent {
  const factory _OnGetListStory(
      {final int? page,
      final int? size,
      final int? location}) = _$OnGetListStoryImpl;

  int? get page;
  int? get size;
  int? get location;
  @JsonKey(ignore: true)
  _$$OnGetListStoryImplCopyWith<_$OnGetListStoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLogoutClickedImplCopyWith<$Res> {
  factory _$$OnLogoutClickedImplCopyWith(_$OnLogoutClickedImpl value,
          $Res Function(_$OnLogoutClickedImpl) then) =
      __$$OnLogoutClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLogoutClickedImplCopyWithImpl<$Res>
    extends _$ListStoryEventCopyWithImpl<$Res, _$OnLogoutClickedImpl>
    implements _$$OnLogoutClickedImplCopyWith<$Res> {
  __$$OnLogoutClickedImplCopyWithImpl(
      _$OnLogoutClickedImpl _value, $Res Function(_$OnLogoutClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLogoutClickedImpl implements _OnLogoutClicked {
  const _$OnLogoutClickedImpl();

  @override
  String toString() {
    return 'ListStoryEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLogoutClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page, int? size, int? location) getListStory,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page, int? size, int? location)? getListStory,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page, int? size, int? location)? getListStory,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGetListStory value) getListStory,
    required TResult Function(_OnLogoutClicked value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGetListStory value)? getListStory,
    TResult? Function(_OnLogoutClicked value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGetListStory value)? getListStory,
    TResult Function(_OnLogoutClicked value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _OnLogoutClicked implements ListStoryEvent {
  const factory _OnLogoutClicked() = _$OnLogoutClickedImpl;
}

/// @nodoc
mixin _$ListStoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStoryStateCopyWith<$Res> {
  factory $ListStoryStateCopyWith(
          ListStoryState value, $Res Function(ListStoryState) then) =
      _$ListStoryStateCopyWithImpl<$Res, ListStoryState>;
}

/// @nodoc
class _$ListStoryStateCopyWithImpl<$Res, $Val extends ListStoryState>
    implements $ListStoryStateCopyWith<$Res> {
  _$ListStoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListStoryInitialImplCopyWith<$Res> {
  factory _$$ListStoryInitialImplCopyWith(_$ListStoryInitialImpl value,
          $Res Function(_$ListStoryInitialImpl) then) =
      __$$ListStoryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListStoryInitialImplCopyWithImpl<$Res>
    extends _$ListStoryStateCopyWithImpl<$Res, _$ListStoryInitialImpl>
    implements _$$ListStoryInitialImplCopyWith<$Res> {
  __$$ListStoryInitialImplCopyWithImpl(_$ListStoryInitialImpl _value,
      $Res Function(_$ListStoryInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListStoryInitialImpl implements ListStoryInitial {
  const _$ListStoryInitialImpl();

  @override
  String toString() {
    return 'ListStoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListStoryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
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
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ListStoryInitial implements ListStoryState {
  const factory ListStoryInitial() = _$ListStoryInitialImpl;
}

/// @nodoc
abstract class _$$ListStoryEmptyImplCopyWith<$Res> {
  factory _$$ListStoryEmptyImplCopyWith(_$ListStoryEmptyImpl value,
          $Res Function(_$ListStoryEmptyImpl) then) =
      __$$ListStoryEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListStoryEmptyImplCopyWithImpl<$Res>
    extends _$ListStoryStateCopyWithImpl<$Res, _$ListStoryEmptyImpl>
    implements _$$ListStoryEmptyImplCopyWith<$Res> {
  __$$ListStoryEmptyImplCopyWithImpl(
      _$ListStoryEmptyImpl _value, $Res Function(_$ListStoryEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListStoryEmptyImpl implements ListStoryEmpty {
  const _$ListStoryEmptyImpl();

  @override
  String toString() {
    return 'ListStoryState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListStoryEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ListStoryEmpty implements ListStoryState {
  const factory ListStoryEmpty() = _$ListStoryEmptyImpl;
}

/// @nodoc
abstract class _$$ListStoryLoadingImplCopyWith<$Res> {
  factory _$$ListStoryLoadingImplCopyWith(_$ListStoryLoadingImpl value,
          $Res Function(_$ListStoryLoadingImpl) then) =
      __$$ListStoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListStoryLoadingImplCopyWithImpl<$Res>
    extends _$ListStoryStateCopyWithImpl<$Res, _$ListStoryLoadingImpl>
    implements _$$ListStoryLoadingImplCopyWith<$Res> {
  __$$ListStoryLoadingImplCopyWithImpl(_$ListStoryLoadingImpl _value,
      $Res Function(_$ListStoryLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListStoryLoadingImpl implements ListStoryLoading {
  const _$ListStoryLoadingImpl();

  @override
  String toString() {
    return 'ListStoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListStoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
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
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ListStoryLoading implements ListStoryState {
  const factory ListStoryLoading() = _$ListStoryLoadingImpl;
}

/// @nodoc
abstract class _$$ListStorySuccessImplCopyWith<$Res> {
  factory _$$ListStorySuccessImplCopyWith(_$ListStorySuccessImpl value,
          $Res Function(_$ListStorySuccessImpl) then) =
      __$$ListStorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ListStoryResponse>? response});
}

/// @nodoc
class __$$ListStorySuccessImplCopyWithImpl<$Res>
    extends _$ListStoryStateCopyWithImpl<$Res, _$ListStorySuccessImpl>
    implements _$$ListStorySuccessImplCopyWith<$Res> {
  __$$ListStorySuccessImplCopyWithImpl(_$ListStorySuccessImpl _value,
      $Res Function(_$ListStorySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ListStorySuccessImpl(
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<ListStoryResponse>?,
    ));
  }
}

/// @nodoc

class _$ListStorySuccessImpl implements ListStorySuccess {
  const _$ListStorySuccessImpl({final List<ListStoryResponse>? response})
      : _response = response;

  final List<ListStoryResponse>? _response;
  @override
  List<ListStoryResponse>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListStoryState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStorySuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStorySuccessImplCopyWith<_$ListStorySuccessImpl> get copyWith =>
      __$$ListStorySuccessImplCopyWithImpl<_$ListStorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
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
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ListStorySuccess implements ListStoryState {
  const factory ListStorySuccess({final List<ListStoryResponse>? response}) =
      _$ListStorySuccessImpl;

  List<ListStoryResponse>? get response;
  @JsonKey(ignore: true)
  _$$ListStorySuccessImplCopyWith<_$ListStorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListStoryErrorImplCopyWith<$Res> {
  factory _$$ListStoryErrorImplCopyWith(_$ListStoryErrorImpl value,
          $Res Function(_$ListStoryErrorImpl) then) =
      __$$ListStoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ListStoryErrorImplCopyWithImpl<$Res>
    extends _$ListStoryStateCopyWithImpl<$Res, _$ListStoryErrorImpl>
    implements _$$ListStoryErrorImplCopyWith<$Res> {
  __$$ListStoryErrorImplCopyWithImpl(
      _$ListStoryErrorImpl _value, $Res Function(_$ListStoryErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ListStoryErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ListStoryErrorImpl implements ListStoryError {
  const _$ListStoryErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ListStoryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStoryErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStoryErrorImplCopyWith<_$ListStoryErrorImpl> get copyWith =>
      __$$ListStoryErrorImplCopyWithImpl<_$ListStoryErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
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
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ListStoryError implements ListStoryState {
  const factory ListStoryError({final String? message}) = _$ListStoryErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ListStoryErrorImplCopyWith<_$ListStoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListStoryLogoutImplCopyWith<$Res> {
  factory _$$ListStoryLogoutImplCopyWith(_$ListStoryLogoutImpl value,
          $Res Function(_$ListStoryLogoutImpl) then) =
      __$$ListStoryLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListStoryLogoutImplCopyWithImpl<$Res>
    extends _$ListStoryStateCopyWithImpl<$Res, _$ListStoryLogoutImpl>
    implements _$$ListStoryLogoutImplCopyWith<$Res> {
  __$$ListStoryLogoutImplCopyWithImpl(
      _$ListStoryLogoutImpl _value, $Res Function(_$ListStoryLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListStoryLogoutImpl implements ListStoryLogout {
  const _$ListStoryLogoutImpl();

  @override
  String toString() {
    return 'ListStoryState.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListStoryLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(List<ListStoryResponse>? response) success,
    required TResult Function(String? message) error,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(List<ListStoryResponse>? response)? success,
    TResult? Function(String? message)? error,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(List<ListStoryResponse>? response)? success,
    TResult Function(String? message)? error,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListStoryInitial value) initial,
    required TResult Function(ListStoryEmpty value) empty,
    required TResult Function(ListStoryLoading value) loading,
    required TResult Function(ListStorySuccess value) success,
    required TResult Function(ListStoryError value) error,
    required TResult Function(ListStoryLogout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ListStoryInitial value)? initial,
    TResult? Function(ListStoryEmpty value)? empty,
    TResult? Function(ListStoryLoading value)? loading,
    TResult? Function(ListStorySuccess value)? success,
    TResult? Function(ListStoryError value)? error,
    TResult? Function(ListStoryLogout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListStoryInitial value)? initial,
    TResult Function(ListStoryEmpty value)? empty,
    TResult Function(ListStoryLoading value)? loading,
    TResult Function(ListStorySuccess value)? success,
    TResult Function(ListStoryError value)? error,
    TResult Function(ListStoryLogout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class ListStoryLogout implements ListStoryState {
  const factory ListStoryLogout() = _$ListStoryLogoutImpl;
}
