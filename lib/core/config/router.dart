import 'package:go_router/go_router.dart';

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
        return const LoginPage();
      },
      routes: [
        GoRoute(
          name: 'register',
          path: 'register',
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
      ],
    ),
    GoRoute(
      name: 'liststory',
      path: '/liststory',
      builder: (context, state) {
        return const ListStoryPage();
      },
      routes: const [],
    ),
  ],
  errorBuilder: (context, state) {
    return const ErrorPage();
  },
);
