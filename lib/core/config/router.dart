import 'package:dicoding_story_app/features/auth/presentation/login/login_page.dart';
import 'package:dicoding_story_app/features/auth/presentation/register/register_page.dart';
import 'package:dicoding_story_app/features/error/error_page.dart';
import 'package:go_router/go_router.dart';

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
  ],
  errorBuilder: (context, state) {
    return const ErrorPage();
  },
);
