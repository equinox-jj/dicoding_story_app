import 'package:bloc/bloc.dart';
import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/login/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/helper/shared_preferences_helper.dart';
import '../../../../../di/injector.dart';
import '../../../domain/repository/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      switch (event) {
        case _OnLoginUser value:
          emit(const LoginState.loading());

          final result = await _authRepository.loginUser(
            email: value.email ?? '',
            password: value.password ?? '',
          );

          result.fold(
            (left) {
              final errorResponse = left.object as LoginResponse;

              emit(LoginState.error(message: errorResponse.message));
            },
            (right) => emit(LoginState.success(
              response: right,
              authToken: right.loginResult?.token ?? '',
            )),
          );
          break;
        case _OnLoginObscureText value:
          emit(LoginState.isTextObscured(isObscure: value.isObscure));
          break;
        case _OnAuthenticated _:
          final prefs = sl<SharedPreferencesHelper>();
          final token = await prefs.getToken;
          if (token.isNotEmpty) {
            emit(const LoginState.isAuthenticated());
          } else {
            emit(const LoginState.isUnAuthenticated());
          }
          break;
        default:
      }
    });
  }
}
