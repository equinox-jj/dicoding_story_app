import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/remote/model/register/register_response.dart';
import '../../../domain/repository/auth_repository.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;

  RegisterBloc(this._authRepository) : super(const RegisterInitial()) {
    on<RegisterEvent>((event, emit) async {
      await event.maybeMap(
        orElse: () => null,
        isTextObscured: (value) async => emit(RegisterState.isTextObscured(
          isObscure: value.isObscure,
        )),
        registerUser: (value) async {
          emit(const RegisterState.loading());

          final result = await _authRepository.registerUser(
            name: value.name,
            email: value.email,
            password: value.password,
          );

          result.fold(
            (failure) {
              final errorResponse = failure.object as RegisterResponse?;

              emit(RegisterState.error(
                message: errorResponse?.message ?? failure.message ?? '',
              ));
            },
            (success) => emit(RegisterState.success(response: success)),
          );
        },
      );
    });
  }
}
