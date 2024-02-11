import 'package:dicoding_story_app/features/auth/data/datasource/remote/auth_remote_data_source_impl.dart';
import 'package:dicoding_story_app/features/auth/data/repository/auth_repository_impl.dart';
import 'package:dicoding_story_app/features/auth/domain/repository/auth_repository.dart';
import 'package:dicoding_story_app/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/data/datasource/remote/auth_remote_data_source.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(authRemoteDataSource: sl()),
  );

  sl.registerFactory<RegisterBloc>(
    () => RegisterBloc(sl()),
  );
}
