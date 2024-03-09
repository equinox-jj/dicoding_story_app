import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/helper/shared_preferences_helper.dart';
import '../features/auth/data/datasource/remote/auth_remote_data_source.dart';
import '../features/auth/data/datasource/remote/auth_remote_data_source_impl.dart';
import '../features/auth/data/repository/auth_repository_impl.dart';
import '../features/auth/domain/repository/auth_repository.dart';
import '../features/auth/presentation/login/bloc/login_bloc.dart';
import '../features/auth/presentation/register/bloc/register_bloc.dart';
import '../features/story/data/datasource/remote/story_remote_data_source.dart';
import '../features/story/data/datasource/remote/story_remote_data_source_impl.dart';
import '../features/story/data/repository/story_repository_impl.dart';
import '../features/story/domain/repository/story_repository.dart';
import '../features/story/presentation/addstory/bloc/add_story_bloc.dart';
import '../features/story/presentation/liststory/bloc/list_story_bloc.dart';

final sl = GetIt.instance;

void init() {
  sl.registerLazySingleton(
    () async => await SharedPreferences.getInstance(),
  );
  sl.registerLazySingleton<SharedPreferencesHelper>(
    () => SharedPreferencesHelper(preferences: sl()),
  );

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(),
  );
  sl.registerLazySingleton<StoryRemoteDataSource>(
    () => StoryRemoteDataSourceImpl(),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(authRemoteDataSource: sl()),
  );
  sl.registerLazySingleton<StoryRepository>(
    () => StoryRepositoryImpl(storyRemoteDataSource: sl()),
  );

  sl.registerFactory<RegisterBloc>(
    () => RegisterBloc(sl()),
  );
  sl.registerFactory<LoginBloc>(
    () => LoginBloc(sl()),
  );
  sl.registerFactory<AddStoryBloc>(
    () => AddStoryBloc(sl()),
  );
  sl.registerFactory<ListStoryBloc>(
    () => ListStoryBloc(sl()),
  );
}
