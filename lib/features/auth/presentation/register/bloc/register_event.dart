part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.onRegisterUser(
    String name,
    String email,
    String password,
  ) = _OnRegisterUser;
  const factory RegisterEvent.onObscureText(bool isObscure) = _OnObscureText;
}
