import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/remote/model/login/login_response.dart';
import '../../../domain/repository/auth_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(const LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () => null,
        isTextObscured: (value) async => emit(LoginState.isTextObscured(
          isObscure: value.isObscure,
        )),
        loginUser: (value) async {
          emit(const LoginState.loading());

          final result = await _authRepository.loginUser(
            email: value.email,
            password: value.password,
          );

          result.fold(
            (failure) {
              final errorResponse = failure.object as LoginResponse?;

              emit(LoginState.error(
                message: errorResponse?.message ?? failure.message ?? '',
              ));
            },
            (success) => emit(LoginState.success(
              response: success,
              authToken: success.loginResult?.token ?? '',
            )),
          );
        },
      );
    });
  }
}
