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
        registerUser,
    required TResult Function(bool isObscure) isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)? registerUser,
    TResult? Function(bool isObscure)? isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)? registerUser,
    TResult Function(bool isObscure)? isTextObscured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterUser value) registerUser,
    required TResult Function(_OnRegisterObscureText value) isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRegisterUser value)? registerUser,
    TResult? Function(_OnRegisterObscureText value)? isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterUser value)? registerUser,
    TResult Function(_OnRegisterObscureText value)? isTextObscured,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
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
  const _$OnRegisterUserImpl(
      {required this.name, required this.email, required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.registerUser(name: $name, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.registerUser'))
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
        registerUser,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return registerUser(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)? registerUser,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return registerUser?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)? registerUser,
    TResult Function(bool isObscure)? isTextObscured,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterUser value) registerUser,
    required TResult Function(_OnRegisterObscureText value) isTextObscured,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRegisterUser value)? registerUser,
    TResult? Function(_OnRegisterObscureText value)? isTextObscured,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterUser value)? registerUser,
    TResult Function(_OnRegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterUser implements RegisterEvent {
  const factory _OnRegisterUser(
      {required final String name,
      required final String email,
      required final String password}) = _$OnRegisterUserImpl;

  String get name;
  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$OnRegisterUserImplCopyWith<_$OnRegisterUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnRegisterObscureTextImplCopyWith<$Res> {
  factory _$$OnRegisterObscureTextImplCopyWith(
          _$OnRegisterObscureTextImpl value,
          $Res Function(_$OnRegisterObscureTextImpl) then) =
      __$$OnRegisterObscureTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$OnRegisterObscureTextImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$OnRegisterObscureTextImpl>
    implements _$$OnRegisterObscureTextImplCopyWith<$Res> {
  __$$OnRegisterObscureTextImplCopyWithImpl(_$OnRegisterObscureTextImpl _value,
      $Res Function(_$OnRegisterObscureTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$OnRegisterObscureTextImpl(
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnRegisterObscureTextImpl
    with DiagnosticableTreeMixin
    implements _OnRegisterObscureText {
  const _$OnRegisterObscureTextImpl({required this.isObscure});

  @override
  final bool isObscure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterEvent.isTextObscured(isObscure: $isObscure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterEvent.isTextObscured'))
      ..add(DiagnosticsProperty('isObscure', isObscure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnRegisterObscureTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnRegisterObscureTextImplCopyWith<_$OnRegisterObscureTextImpl>
      get copyWith => __$$OnRegisterObscureTextImplCopyWithImpl<
          _$OnRegisterObscureTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String email, String password)
        registerUser,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return isTextObscured(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String email, String password)? registerUser,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return isTextObscured?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String email, String password)? registerUser,
    TResult Function(bool isObscure)? isTextObscured,
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
    required TResult Function(_OnRegisterUser value) registerUser,
    required TResult Function(_OnRegisterObscureText value) isTextObscured,
  }) {
    return isTextObscured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnRegisterUser value)? registerUser,
    TResult? Function(_OnRegisterObscureText value)? isTextObscured,
  }) {
    return isTextObscured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterUser value)? registerUser,
    TResult Function(_OnRegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (isTextObscured != null) {
      return isTextObscured(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterObscureText implements RegisterEvent {
  const factory _OnRegisterObscureText({required final bool isObscure}) =
      _$OnRegisterObscureTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$OnRegisterObscureTextImplCopyWith<_$OnRegisterObscureTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse? response) success,
    required TResult Function(bool isObscure) isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse? response)? success,
    TResult? Function(bool isObscure)? isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse? response)? success,
    TResult Function(bool isObscure)? isTextObscured,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterError value) error,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterObscureText value) isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoading value)? loading,
    TResult? Function(RegisterError value)? error,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterObscureText value)? isTextObscured,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterError value)? error,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterObscureText value)? isTextObscured,
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
abstract class _$$RegisterInitialImplCopyWith<$Res> {
  factory _$$RegisterInitialImplCopyWith(_$RegisterInitialImpl value,
          $Res Function(_$RegisterInitialImpl) then) =
      __$$RegisterInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterInitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterInitialImpl>
    implements _$$RegisterInitialImplCopyWith<$Res> {
  __$$RegisterInitialImplCopyWithImpl(
      _$RegisterInitialImpl _value, $Res Function(_$RegisterInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterInitialImpl
    with DiagnosticableTreeMixin
    implements RegisterInitial {
  const _$RegisterInitialImpl();

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
        (other.runtimeType == runtimeType && other is _$RegisterInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse? response) success,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse? response)? success,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse? response)? success,
    TResult Function(bool isObscure)? isTextObscured,
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
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterError value) error,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterObscureText value) isTextObscured,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoading value)? loading,
    TResult? Function(RegisterError value)? error,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterObscureText value)? isTextObscured,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterError value)? error,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RegisterInitial implements RegisterState {
  const factory RegisterInitial() = _$RegisterInitialImpl;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl value,
          $Res Function(_$RegisterLoadingImpl) then) =
      __$$RegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterLoadingImpl>
    implements _$$RegisterLoadingImplCopyWith<$Res> {
  __$$RegisterLoadingImplCopyWithImpl(
      _$RegisterLoadingImpl _value, $Res Function(_$RegisterLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterLoadingImpl
    with DiagnosticableTreeMixin
    implements RegisterLoading {
  const _$RegisterLoadingImpl();

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
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse? response) success,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse? response)? success,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse? response)? success,
    TResult Function(bool isObscure)? isTextObscured,
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
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterError value) error,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterObscureText value) isTextObscured,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoading value)? loading,
    TResult? Function(RegisterError value)? error,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterObscureText value)? isTextObscured,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterError value)? error,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading implements RegisterState {
  const factory RegisterLoading() = _$RegisterLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<$Res> {
  factory _$$RegisterErrorImplCopyWith(
          _$RegisterErrorImpl value, $Res Function(_$RegisterErrorImpl) then) =
      __$$RegisterErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterErrorImpl>
    implements _$$RegisterErrorImplCopyWith<$Res> {
  __$$RegisterErrorImplCopyWithImpl(
      _$RegisterErrorImpl _value, $Res Function(_$RegisterErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RegisterErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl
    with DiagnosticableTreeMixin
    implements RegisterError {
  const _$RegisterErrorImpl({this.message = ''});

  @override
  @JsonKey()
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
            other is _$RegisterErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<_$RegisterErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse? response) success,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse? response)? success,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse? response)? success,
    TResult Function(bool isObscure)? isTextObscured,
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
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterError value) error,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterObscureText value) isTextObscured,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoading value)? loading,
    TResult? Function(RegisterError value)? error,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterObscureText value)? isTextObscured,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterError value)? error,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements RegisterState {
  const factory RegisterError({final String message}) = _$RegisterErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponse? response});

  $RegisterResponseCopyWith<$Res>? get response;
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
    Object? response = freezed,
  }) {
    return _then(_$RegisterSuccessImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegisterResponse?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterResponseCopyWith<$Res>? get response {
    if (_value.response == null) {
      return null;
    }

    return $RegisterResponseCopyWith<$Res>(_value.response!, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$RegisterSuccessImpl
    with DiagnosticableTreeMixin
    implements RegisterSuccess {
  const _$RegisterSuccessImpl({this.response});

  @override
  final RegisterResponse? response;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.success(response: $response)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState.success'))
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
    required TResult Function(RegisterResponse? response) success,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse? response)? success,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse? response)? success,
    TResult Function(bool isObscure)? isTextObscured,
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
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterError value) error,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterObscureText value) isTextObscured,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoading value)? loading,
    TResult? Function(RegisterError value)? error,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterObscureText value)? isTextObscured,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterError value)? error,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess implements RegisterState {
  const factory RegisterSuccess({final RegisterResponse? response}) =
      _$RegisterSuccessImpl;

  RegisterResponse? get response;
  @JsonKey(ignore: true)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterObscureTextImplCopyWith<$Res> {
  factory _$$RegisterObscureTextImplCopyWith(_$RegisterObscureTextImpl value,
          $Res Function(_$RegisterObscureTextImpl) then) =
      __$$RegisterObscureTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isObscure});
}

/// @nodoc
class __$$RegisterObscureTextImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterObscureTextImpl>
    implements _$$RegisterObscureTextImplCopyWith<$Res> {
  __$$RegisterObscureTextImplCopyWithImpl(_$RegisterObscureTextImpl _value,
      $Res Function(_$RegisterObscureTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isObscure = null,
  }) {
    return _then(_$RegisterObscureTextImpl(
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterObscureTextImpl
    with DiagnosticableTreeMixin
    implements RegisterObscureText {
  const _$RegisterObscureTextImpl({this.isObscure = true});

  @override
  @JsonKey()
  final bool isObscure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState.isTextObscured(isObscure: $isObscure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState.isTextObscured'))
      ..add(DiagnosticsProperty('isObscure', isObscure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterObscureTextImpl &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isObscure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterObscureTextImplCopyWith<_$RegisterObscureTextImpl> get copyWith =>
      __$$RegisterObscureTextImplCopyWithImpl<_$RegisterObscureTextImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(RegisterResponse? response) success,
    required TResult Function(bool isObscure) isTextObscured,
  }) {
    return isTextObscured(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(RegisterResponse? response)? success,
    TResult? Function(bool isObscure)? isTextObscured,
  }) {
    return isTextObscured?.call(isObscure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(RegisterResponse? response)? success,
    TResult Function(bool isObscure)? isTextObscured,
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
    required TResult Function(RegisterInitial value) initial,
    required TResult Function(RegisterLoading value) loading,
    required TResult Function(RegisterError value) error,
    required TResult Function(RegisterSuccess value) success,
    required TResult Function(RegisterObscureText value) isTextObscured,
  }) {
    return isTextObscured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInitial value)? initial,
    TResult? Function(RegisterLoading value)? loading,
    TResult? Function(RegisterError value)? error,
    TResult? Function(RegisterSuccess value)? success,
    TResult? Function(RegisterObscureText value)? isTextObscured,
  }) {
    return isTextObscured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInitial value)? initial,
    TResult Function(RegisterLoading value)? loading,
    TResult Function(RegisterError value)? error,
    TResult Function(RegisterSuccess value)? success,
    TResult Function(RegisterObscureText value)? isTextObscured,
    required TResult orElse(),
  }) {
    if (isTextObscured != null) {
      return isTextObscured(this);
    }
    return orElse();
  }
}

abstract class RegisterObscureText implements RegisterState {
  const factory RegisterObscureText({final bool isObscure}) =
      _$RegisterObscureTextImpl;

  bool get isObscure;
  @JsonKey(ignore: true)
  _$$RegisterObscureTextImplCopyWith<_$RegisterObscureTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
