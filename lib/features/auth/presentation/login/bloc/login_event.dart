part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onLoginUser(
    String email,
    String password,
  ) = _OnLoginUser;
  const factory LoginEvent.onObscureText(bool isObscure) = _OnObscureText;
}
