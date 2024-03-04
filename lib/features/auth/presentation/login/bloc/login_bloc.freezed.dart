// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginUser,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginUser,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginUser,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoginUser value) loginUser,
    required TResult Function(_OnLoginObscureText value) isTextObscured,
    required TResult Function(_OnAuthenticated value) isLoggedIn,
    required TResult Function(_OnUnauthenticated value) isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoginUser value)? loginUser,
    TResult? Function(_OnLoginObscureText value)? isTextObscured,
    TResult? Function(_OnAuthenticated value)? isLoggedIn,
    TResult? Function(_OnUnauthenticated value)? isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoginUser value)? loginUser,
    TResult Function(_OnLoginObscureText value)? isTextObscured,
    TResult Function(_OnAuthenticated value)? isLoggedIn,
    TResult Function(_OnUnauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnLoginUserImplCopyWith<$Res> {
  factory _$$OnLoginUserImplCopyWith(
          _$OnLoginUserImpl value, $Res Function(_$OnLoginUserImpl) then) =
      __$$OnLoginUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email, String? password});
}

/// @nodoc
class __$$OnLoginUserImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnLoginUserImpl>
    implements _$$OnLoginUserImplCopyWith<$Res> {
  __$$OnLoginUserImplCopyWithImpl(
      _$OnLoginUserImpl _value, $Res Function(_$OnLoginUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$OnLoginUserImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnLoginUserImpl implements _OnLoginUser {
  const _$OnLoginUserImpl({this.email, this.password});

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'LoginEvent.loginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginUserImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginUserImplCopyWith<_$OnLoginUserImpl> get copyWith =>
      __$$OnLoginUserImplCopyWithImpl<_$OnLoginUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginUser,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginUser,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginUser,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoginUser value) loginUser,
    required TResult Function(_OnLoginObscureText value) isTextObscured,
    required TResult Function(_OnAuthenticated value) isLoggedIn,
    required TResult Function(_OnUnauthenticated value) isLoggedOut,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoginUser value)? loginUser,
    TResult? Function(_OnLoginObscureText value)? isTextObscured,
    TResult? Function(_OnAuthenticated value)? isLoggedIn,
    TResult? Function(_OnUnauthenticated value)? isLoggedOut,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoginUser value)? loginUser,
    TResult Function(_OnLoginObscureText value)? isTextObscured,
    TResult Function(_OnAuthenticated value)? isLoggedIn,
    TResult Function(_OnUnauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class _OnLoginUser implements LoginEvent {
  const factory _OnLoginUser({final String? email, final String? password}) =
      _$OnLoginUserImpl;

  String? get email;
  String? get password;
  @JsonKey(ignore: true)
  _$$OnLoginUserImplCopyWith<_$OnLoginUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoginObscureTextImplCopyWith<$Res> {
  factory _$$OnLoginObscureTextImplCopyWith(_$OnLoginObscureTextImpl value,
          $Res Function(_$OnLoginObscureTextImpl) then) =
      __$$OnLoginObscureTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$OnLoginObscureTextImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnLoginObscureTextImpl>
    implements _$$OnLoginObscureTextImplCopyWith<$Res> {
  __$$OnLoginObscureTextImplCopyWithImpl(_$OnLoginObscureTextImpl _value,
      $Res Function(_$OnLoginObscureTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$OnLoginObscureTextImpl(
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnLoginObscureTextImpl implements _OnLoginObscureText {
  const _$OnLoginObscureTextImpl({required this.isObscure});

  @override
  final bool isObscure;

  @override
  String toString() {
    return 'LoginEvent.isTextObscured(isObscure: $isObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginObscureTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginObscureTextImplCopyWith<_$OnLoginObscureTextImpl> get copyWith =>
      __$$OnLoginObscureTextImplCopyWithImpl<_$OnLoginObscureTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginUser,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return isTextObscured(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginUser,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return isTextObscured?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginUser,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isTextObscured != null) {
      return isTextObscured(isObscure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoginUser value) loginUser,
    required TResult Function(_OnLoginObscureText value) isTextObscured,
    required TResult Function(_OnAuthenticated value) isLoggedIn,
    required TResult Function(_OnUnauthenticated value) isLoggedOut,
  }) {
    return isTextObscured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoginUser value)? loginUser,
    TResult? Function(_OnLoginObscureText value)? isTextObscured,
    TResult? Function(_OnAuthenticated value)? isLoggedIn,
    TResult? Function(_OnUnauthenticated value)? isLoggedOut,
  }) {
    return isTextObscured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoginUser value)? loginUser,
    TResult Function(_OnLoginObscureText value)? isTextObscured,
    TResult Function(_OnAuthenticated value)? isLoggedIn,
    TResult Function(_OnUnauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isTextObscured != null) {
      return isTextObscured(this);
    }
    return orElse();
  }
}

abstract class _OnLoginObscureText implements LoginEvent {
  const factory _OnLoginObscureText({required final bool isObscure}) =
      _$OnLoginObscureTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$OnLoginObscureTextImplCopyWith<_$OnLoginObscureTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnAuthenticatedImplCopyWith<$Res> {
  factory _$$OnAuthenticatedImplCopyWith(_$OnAuthenticatedImpl value,
          $Res Function(_$OnAuthenticatedImpl) then) =
      __$$OnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnAuthenticatedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnAuthenticatedImpl>
    implements _$$OnAuthenticatedImplCopyWith<$Res> {
  __$$OnAuthenticatedImplCopyWithImpl(
      _$OnAuthenticatedImpl _value, $Res Function(_$OnAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnAuthenticatedImpl implements _OnAuthenticated {
  const _$OnAuthenticatedImpl();

  @override
  String toString() {
    return 'LoginEvent.isLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginUser,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return isLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginUser,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return isLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginUser,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoginUser value) loginUser,
    required TResult Function(_OnLoginObscureText value) isTextObscured,
    required TResult Function(_OnAuthenticated value) isLoggedIn,
    required TResult Function(_OnUnauthenticated value) isLoggedOut,
  }) {
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoginUser value)? loginUser,
    TResult? Function(_OnLoginObscureText value)? isTextObscured,
    TResult? Function(_OnAuthenticated value)? isLoggedIn,
    TResult? Function(_OnUnauthenticated value)? isLoggedOut,
  }) {
    return isLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoginUser value)? loginUser,
    TResult Function(_OnLoginObscureText value)? isTextObscured,
    TResult Function(_OnAuthenticated value)? isLoggedIn,
    TResult Function(_OnUnauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _OnAuthenticated implements LoginEvent {
  const factory _OnAuthenticated() = _$OnAuthenticatedImpl;
}

/// @nodoc
abstract class _$$OnUnauthenticatedImplCopyWith<$Res> {
  factory _$$OnUnauthenticatedImplCopyWith(_$OnUnauthenticatedImpl value,
          $Res Function(_$OnUnauthenticatedImpl) then) =
      __$$OnUnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnUnauthenticatedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnUnauthenticatedImpl>
    implements _$$OnUnauthenticatedImplCopyWith<$Res> {
  __$$OnUnauthenticatedImplCopyWithImpl(_$OnUnauthenticatedImpl _value,
      $Res Function(_$OnUnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnUnauthenticatedImpl implements _OnUnauthenticated {
  const _$OnUnauthenticatedImpl();

  @override
  String toString() {
    return 'LoginEvent.isLoggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnUnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email, String? password) loginUser,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return isLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email, String? password)? loginUser,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return isLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email, String? password)? loginUser,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedOut != null) {
      return isLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoginUser value) loginUser,
    required TResult Function(_OnLoginObscureText value) isTextObscured,
    required TResult Function(_OnAuthenticated value) isLoggedIn,
    required TResult Function(_OnUnauthenticated value) isLoggedOut,
  }) {
    return isLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoginUser value)? loginUser,
    TResult? Function(_OnLoginObscureText value)? isTextObscured,
    TResult? Function(_OnAuthenticated value)? isLoggedIn,
    TResult? Function(_OnUnauthenticated value)? isLoggedOut,
  }) {
    return isLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoginUser value)? loginUser,
    TResult Function(_OnLoginObscureText value)? isTextObscured,
    TResult Function(_OnAuthenticated value)? isLoggedIn,
    TResult Function(_OnUnauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedOut != null) {
      return isLoggedOut(this);
    }
    return orElse();
  }
}

abstract class _OnUnauthenticated implements LoginEvent {
  const factory _OnUnauthenticated() = _$OnUnauthenticatedImpl;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$LoginErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
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
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError({final String? message}) = _$LoginErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponse? response, String authToken});

  $LoginResponseCopyWith<$Res>? get response;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? authToken = null,
  }) {
    return _then(_$LoginSuccessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $LoginResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$LoginSuccessImpl implements LoginSuccess {
  const _$LoginSuccessImpl({this.response, required this.authToken});

  @override
  final LoginResponse? response;
  @override
  final String authToken;

  @override
  String toString() {
    return 'LoginState.success(response: $response, authToken: $authToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, authToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return success(response, authToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return success?.call(response, authToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response, authToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginState {
  const factory LoginSuccess(
      {final LoginResponse? response,
      required final String authToken}) = _$LoginSuccessImpl;

  LoginResponse? get response;
  String get authToken;
  @JsonKey(ignore: true)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginObscureTextImplCopyWith<$Res> {
  factory _$$LoginObscureTextImplCopyWith(_$LoginObscureTextImpl value,
          $Res Function(_$LoginObscureTextImpl) then) =
      __$$LoginObscureTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$LoginObscureTextImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginObscureTextImpl>
    implements _$$LoginObscureTextImplCopyWith<$Res> {
  __$$LoginObscureTextImplCopyWithImpl(_$LoginObscureTextImpl _value,
      $Res Function(_$LoginObscureTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$LoginObscureTextImpl(
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginObscureTextImpl implements LoginObscureText {
  const _$LoginObscureTextImpl({required this.isObscure});

  @override
  final bool isObscure;

  @override
  String toString() {
    return 'LoginState.isTextObscured(isObscure: $isObscure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginObscureTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginObscureTextImplCopyWith<_$LoginObscureTextImpl> get copyWith =>
      __$$LoginObscureTextImplCopyWithImpl<_$LoginObscureTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return isTextObscured(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return isTextObscured?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isTextObscured != null) {
      return isTextObscured(isObscure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return isTextObscured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return isTextObscured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isTextObscured != null) {
      return isTextObscured(this);
    }
    return orElse();
  }
}

abstract class LoginObscureText implements LoginState {
  const factory LoginObscureText({required final bool isObscure}) =
      _$LoginObscureTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$LoginObscureTextImplCopyWith<_$LoginObscureTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'LoginState.isLoggedIn()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return isLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return isLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return isLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return isLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedIn != null) {
      return isLoggedIn(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements LoginState {
  const factory Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'LoginState.isLoggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(LoginResponse? response, String authToken)
        success,
    required TResult Function(bool isObscure) isTextObscured,
    required TResult Function() isLoggedIn,
    required TResult Function() isLoggedOut,
  }) {
    return isLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(LoginResponse? response, String authToken)? success,
    TResult? Function(bool isObscure)? isTextObscured,
    TResult? Function()? isLoggedIn,
    TResult? Function()? isLoggedOut,
  }) {
    return isLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(LoginResponse? response, String authToken)? success,
    TResult Function(bool isObscure)? isTextObscured,
    TResult Function()? isLoggedIn,
    TResult Function()? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedOut != null) {
      return isLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
    required TResult Function(LoginSuccess value) success,
    required TResult Function(LoginObscureText value) isTextObscured,
    required TResult Function(Authenticated value) isLoggedIn,
    required TResult Function(Unauthenticated value) isLoggedOut,
  }) {
    return isLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
    TResult? Function(LoginSuccess value)? success,
    TResult? Function(LoginObscureText value)? isTextObscured,
    TResult? Function(Authenticated value)? isLoggedIn,
    TResult? Function(Unauthenticated value)? isLoggedOut,
  }) {
    return isLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    TResult Function(LoginSuccess value)? success,
    TResult Function(LoginObscureText value)? isTextObscured,
    TResult Function(Authenticated value)? isLoggedIn,
    TResult Function(Unauthenticated value)? isLoggedOut,
    required TResult orElse(),
  }) {
    if (isLoggedOut != null) {
      return isLoggedOut(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements LoginState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}
