part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.error({
    @Default('') String message,
  }) = RegisterError;
  const factory RegisterState.success({
    RegisterResponse? response,
  }) = RegisterSuccess;
  const factory RegisterState.isTextObscured({
    @Default(true) bool isObscure,
  }) = RegisterObscureText;
}
