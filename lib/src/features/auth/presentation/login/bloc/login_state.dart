part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.error({@Default('') String message}) = LoginError;
  const factory LoginState.success({
    LoginResponse? response,
    @Default('') String authToken,
  }) = LoginSuccess;
  const factory LoginState.isTextObscured({
    @Default(true) bool isObscure,
  }) = LoginObscureText;
}
