// ignore_for_file: await_only_futures

import 'package:bloc/bloc.dart';
import 'package:dicoding_story_app/core/helper/shared_preferences_helper.dart';
import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/login/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../di/injector.dart';
import '../../../domain/repository/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;
  final prefs = sl<SharedPreferencesHelper>();

  LoginBloc(this._authRepository) : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.mapOrNull(
        onLoginUser: (value) async {
          emit(const LoginState.loading());

          final result = await _authRepository.loginUser(
            email: value.email,
            password: value.password,
          );

          result.fold(
            (left) => emit(LoginState.error(left.toString())),
            (right) {
              prefs.setToken(right.result?.token ?? '');
              emit(LoginState.success(right));
            },
          );
        },
        onObscureText: (value) => emit(LoginState.obscureText(
          value.isObscure,
        )),
      );
    });
  }
}
