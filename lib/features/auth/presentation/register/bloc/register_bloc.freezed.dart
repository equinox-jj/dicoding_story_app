// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        onRegisterUser,
    required TResult Function(bool isObscure) onObscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)?
        onRegisterUser,
    TResult? Function(bool isObscure)? onObscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)?
        onRegisterUser,
    TResult Function(bool isObscure)? onObscureText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterUser value) onRegisterUser,
    required TResult Function(_OnObscureText value) onObscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRegisterUser value)? onRegisterUser,
    TResult? Function(_OnObscureText value)? onObscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterUser value)? onRegisterUser,
    TResult Function(_OnObscureText value)? onObscureText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnRegisterUserImplCopyWith<$Res> {
  factory _$$OnRegisterUserImplCopyWith(_$OnRegisterUserImpl value,
          $Res Function(_$OnRegisterUserImpl) then) =
      __$$OnRegisterUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$OnRegisterUserImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$OnRegisterUserImpl>
    implements _$$OnRegisterUserImplCopyWith<$Res> {
  __$$OnRegisterUserImplCopyWithImpl(
      _$OnRegisterUserImpl _value, $Res Function(_$OnRegisterUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$OnRegisterUserImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnRegisterUserImpl
    with DiagnosticableTreeMixin
    implements _OnRegisterUser {
  const _$OnRegisterUserImpl(this.name, this.email, this.password);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.onRegisterUser(name: $name, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.onRegisterUser'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRegisterUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRegisterUserImplCopyWith<_$OnRegisterUserImpl> get copyWith =>
      __$$OnRegisterUserImplCopyWithImpl<_$OnRegisterUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        onRegisterUser,
    required TResult Function(bool isObscure) onObscureText,
  }) {
    return onRegisterUser(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)?
        onRegisterUser,
    TResult? Function(bool isObscure)? onObscureText,
  }) {
    return onRegisterUser?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)?
        onRegisterUser,
    TResult Function(bool isObscure)? onObscureText,
    required TResult orElse(),
  }) {
    if (onRegisterUser != null) {
      return onRegisterUser(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterUser value) onRegisterUser,
    required TResult Function(_OnObscureText value) onObscureText,
  }) {
    return onRegisterUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRegisterUser value)? onRegisterUser,
    TResult? Function(_OnObscureText value)? onObscureText,
  }) {
    return onRegisterUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterUser value)? onRegisterUser,
    TResult Function(_OnObscureText value)? onObscureText,
    required TResult orElse(),
  }) {
    if (onRegisterUser != null) {
      return onRegisterUser(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterUser implements RegisterEvent {
  const factory _OnRegisterUser(
          final String name, final String email, final String password) =
      _$OnRegisterUserImpl;

  String get name;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$OnRegisterUserImplCopyWith<_$OnRegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnObscureTextImplCopyWith<$Res> {
  factory _$$OnObscureTextImplCopyWith(
          _$OnObscureTextImpl value, $Res Function(_$OnObscureTextImpl) then) =
      __$$OnObscureTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$OnObscureTextImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$OnObscureTextImpl>
    implements _$$OnObscureTextImplCopyWith<$Res> {
  __$$OnObscureTextImplCopyWithImpl(
      _$OnObscureTextImpl _value, $Res Function(_$OnObscureTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$OnObscureTextImpl(
      null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnObscureTextImpl
    with DiagnosticableTreeMixin
    implements _OnObscureText {
  const _$OnObscureTextImpl(this.isObscure);

  @override
  final bool isObscure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.onObscureText(isObscure: $isObscure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.onObscureText'))
      ..add(DiagnosticsProperty('isObscure', isObscure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnObscureTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnObscureTextImplCopyWith<_$OnObscureTextImpl> get copyWith =>
      __$$OnObscureTextImplCopyWithImpl<_$OnObscureTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        onRegisterUser,
    required TResult Function(bool isObscure) onObscureText,
  }) {
    return onObscureText(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)?
        onRegisterUser,
    TResult? Function(bool isObscure)? onObscureText,
  }) {
    return onObscureText?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)?
        onRegisterUser,
    TResult Function(bool isObscure)? onObscureText,
    required TResult orElse(),
  }) {
    if (onObscureText != null) {
      return onObscureText(isObscure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterUser value) onRegisterUser,
    required TResult Function(_OnObscureText value) onObscureText,
  }) {
    return onObscureText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRegisterUser value)? onRegisterUser,
    TResult? Function(_OnObscureText value)? onObscureText,
  }) {
    return onObscureText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterUser value)? onRegisterUser,
    TResult Function(_OnObscureText value)? onObscureText,
    required TResult orElse(),
  }) {
    if (onObscureText != null) {
      return onObscureText(this);
    }
    return orElse();
  }
}

abstract class _OnObscureText implements RegisterEvent {
  const factory _OnObscureText(final bool isObscure) = _$OnObscureTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$OnObscureTextImplCopyWith<_$OnObscureTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse response) registerSuccess,
    required TResult Function(bool isObscure) obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse response)? registerSuccess,
    TResult? Function(bool isObscure)? obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse response)? registerSuccess,
    TResult Function(bool isObscure)? obscureText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ObscureText value) obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ObscureText value)? obscureText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ObscureText value)? obscureText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse response) registerSuccess,
    required TResult Function(bool isObscure) obscureText,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse response)? registerSuccess,
    TResult? Function(bool isObscure)? obscureText,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse response)? registerSuccess,
    TResult Function(bool isObscure)? obscureText,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ObscureText value) obscureText,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ObscureText value)? obscureText,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegisterState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'RegisterState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse response) registerSuccess,
    required TResult Function(bool isObscure) obscureText,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse response)? registerSuccess,
    TResult? Function(bool isObscure)? obscureText,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse response)? registerSuccess,
    TResult Function(bool isObscure)? obscureText,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ObscureText value) obscureText,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ObscureText value)? obscureText,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RegisterState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse response) registerSuccess,
    required TResult Function(bool isObscure) obscureText,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse response)? registerSuccess,
    TResult? Function(bool isObscure)? obscureText,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse response)? registerSuccess,
    TResult Function(bool isObscure)? obscureText,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ObscureText value) obscureText,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ObscureText value)? obscureText,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RegisterState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponse response});

  $RegisterResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$RegisterSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegisterResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterResponseCopyWith<$Res> get response {
    return $RegisterResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$RegisterSuccessImpl
    with DiagnosticableTreeMixin
    implements _RegisterSuccess {
  const _$RegisterSuccessImpl(this.response);

  @override
  final RegisterResponse response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.registerSuccess(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState.registerSuccess'))
      ..add(DiagnosticsProperty('response', response));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<_$RegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse response) registerSuccess,
    required TResult Function(bool isObscure) obscureText,
  }) {
    return registerSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse response)? registerSuccess,
    TResult? Function(bool isObscure)? obscureText,
  }) {
    return registerSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse response)? registerSuccess,
    TResult Function(bool isObscure)? obscureText,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ObscureText value) obscureText,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ObscureText value)? obscureText,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccess implements RegisterState {
  const factory _RegisterSuccess(final RegisterResponse response) =
      _$RegisterSuccessImpl;

  RegisterResponse get response;
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ObscureTextImplCopyWith<$Res> {
  factory _$$ObscureTextImplCopyWith(
          _$ObscureTextImpl value, $Res Function(_$ObscureTextImpl) then) =
      __$$ObscureTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$ObscureTextImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$ObscureTextImpl>
    implements _$$ObscureTextImplCopyWith<$Res> {
  __$$ObscureTextImplCopyWithImpl(
      _$ObscureTextImpl _value, $Res Function(_$ObscureTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$ObscureTextImpl(
      null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ObscureTextImpl with DiagnosticableTreeMixin implements _ObscureText {
  const _$ObscureTextImpl(this.isObscure);

  @override
  final bool isObscure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.obscureText(isObscure: $isObscure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState.obscureText'))
      ..add(DiagnosticsProperty('isObscure', isObscure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObscureTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ObscureTextImplCopyWith<_$ObscureTextImpl> get copyWith =>
      __$$ObscureTextImplCopyWithImpl<_$ObscureTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse response) registerSuccess,
    required TResult Function(bool isObscure) obscureText,
  }) {
    return obscureText(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse response)? registerSuccess,
    TResult? Function(bool isObscure)? obscureText,
  }) {
    return obscureText?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse response)? registerSuccess,
    TResult Function(bool isObscure)? obscureText,
    required TResult orElse(),
  }) {
    if (obscureText != null) {
      return obscureText(isObscure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_RegisterSuccess value) registerSuccess,
    required TResult Function(_ObscureText value) obscureText,
  }) {
    return obscureText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_RegisterSuccess value)? registerSuccess,
    TResult? Function(_ObscureText value)? obscureText,
  }) {
    return obscureText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_RegisterSuccess value)? registerSuccess,
    TResult Function(_ObscureText value)? obscureText,
    required TResult orElse(),
  }) {
    if (obscureText != null) {
      return obscureText(this);
    }
    return orElse();
  }
}

abstract class _ObscureText implements RegisterState {
  const factory _ObscureText(final bool isObscure) = _$ObscureTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$ObscureTextImplCopyWith<_$ObscureTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
