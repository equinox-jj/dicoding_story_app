part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.error({String? message}) = LoginError;
  const factory LoginState.success({LoginResponse? response, required String authToken}) = LoginSuccess;
  const factory LoginState.isTextObscured({required bool isObscure}) = LoginObscureText;
  const factory LoginState.isAuthenticated() = Authenticated;
  const factory LoginState.isUnAuthenticated() = Unauthenticated;
}