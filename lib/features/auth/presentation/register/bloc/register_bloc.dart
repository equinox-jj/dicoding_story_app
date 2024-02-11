import 'package:bloc/bloc.dart';
import 'package:dicoding_story_app/features/auth/data/datasource/remote/model/register/register_response.dart';
import 'package:dicoding_story_app/features/auth/domain/repository/auth_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository _authRepository;

  RegisterBloc(this._authRepository) : super(const _Initial()) {
    on<RegisterEvent>((event, emit) {
      event.mapOrNull(
        registerUser: (value) async {
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
      );
    });
  }
}
