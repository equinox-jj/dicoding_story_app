// ignore_for_file: await_only_futures

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

  RegisterBloc(this._authRepository) : super(const _Initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.mapOrNull(
        onRegisterUser: (value) async {
          emit(const RegisterState.loading());

          final result = await _authRepository.registerUser(
            name: value.name,
            email: value.email,
            password: value.password,
          );

          result.fold(
            (left) => emit(RegisterState.error(left.toString())),
            (right) => emit(RegisterState.registerSuccess(right)),
          );
        },
        onObscureText: (value) => emit(RegisterState.obscureText(
          value.isObscure,
        )),
      );
    });
  }
}
