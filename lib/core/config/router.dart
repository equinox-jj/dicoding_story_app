import 'package:dicoding_story_app/core/helper/shared_preferences_helper.dart';
import 'package:dicoding_story_app/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:dicoding_story_app/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:dicoding_story_app/features/story/presentation/liststory/bloc/list_story_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../di/injector.dart';
import '../../features/auth/presentation/login/login_page.dart';
import '../../features/auth/presentation/register/register_page.dart';
import '../../features/error/error_page.dart';
import '../../features/story/presentation/liststory/list_story_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'initial',
      path: '/',
      builder: (context, state) {
        return BlocProvider(
          create: (context) => sl<LoginBloc>(),
          child: const LoginPage(),
        );
      },
      routes: [
        GoRoute(
          name: 'register',
          path: 'register',
          builder: (context, state) {
            return BlocProvider(
              create: (context) => sl<RegisterBloc>(),
              child: const RegisterPage(),
            );
          },
        ),
      ],
    ),
    GoRoute(
      name: 'liststory',
      path: '/liststory',
      builder: (context, state) {
        return BlocProvider(
          create: (context) =>
              sl<ListStoryBloc>()..add(const ListStoryEvent.getListStory()),
          child: const ListStoryPage(),
        );
      },
      routes: const [],
    ),
  ],
  redirect: (context, state) async {
    final prefs = sl<SharedPreferencesHelper>();
    final token = await prefs.getToken;

    return token.isNotEmpty ? '/liststory' : null;
  },
  errorBuilder: (context, state) {
    return const ErrorPage();
  },
);
