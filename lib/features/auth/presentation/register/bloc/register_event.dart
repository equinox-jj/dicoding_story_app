part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.registerUser({
    String? name,
    String? email,
    String? password,
  }) = _OnRegisterUser;
  const factory RegisterEvent.isTextObscured({required bool isObscure}) = _OnRegisterObscureText;
}
