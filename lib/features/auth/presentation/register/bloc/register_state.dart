part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = RegisterInitial;
  const factory RegisterState.loading() = RegisterLoading;
  const factory RegisterState.error({String? message}) = RegisterError;
  const factory RegisterState.success({RegisterResponse? response}) = RegisterSuccess;
  const factory RegisterState.isTextObscured({required bool isObscure}) = RegisterObscureText;
}
