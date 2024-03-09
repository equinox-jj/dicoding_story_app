part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginUser({
    required String email,
    required String password,
  }) = _OnLoginUser;
  const factory LoginEvent.isTextObscured({
    required bool isObscure,
  }) = _OnLoginObscureText;
}
