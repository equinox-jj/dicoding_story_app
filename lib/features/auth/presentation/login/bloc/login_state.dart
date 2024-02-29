part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.error(String message) = _Error;
  const factory LoginState.success(LoginResponse response) = _Success;
  const factory LoginState.obscureText(bool isObscure) = _ObscureText;
}
