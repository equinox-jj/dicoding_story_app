import 'package:dicoding_story_app/core/config/route_name.dart';
import 'package:dicoding_story_app/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:dicoding_story_app/features/story/presentation/liststory/bloc/list_story_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../di/injector.dart';
import '../../features/auth/presentation/login/bloc/login_bloc.dart';
import '../../features/auth/presentation/login/login_page.dart';
import '../../features/auth/presentation/register/register_page.dart';
import '../../features/error/error_page.dart';
import '../../features/story/data/datasource/remote/model/getstories/list_story_response.dart';
import '../../features/story/presentation/liststory/list_story_page.dart';
import '../../features/story/presentation/storydetail/story_detail_page.dart';

final GlobalKey<NavigatorState> _navigatorState = GlobalKey<NavigatorState>();

GoRouter router(String? initialLocation) {
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _navigatorState,
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        name: RouteName.LOGIN,
        path: RouterPath.INITIAL,
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlocProvider(
              create: (context) => sl<LoginBloc>(),
              child: const LoginPage(),
            ),
          );
        },
        routes: [
          GoRoute(
            name: RouteName.REGISTER,
            path: RouterPath.REGISTER,
            pageBuilder: (context, state) {
              return MaterialPage(
                child: BlocProvider(
                  create: (context) => sl<RegisterBloc>(),
                  child: const RegisterPage(),
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        name: RouteName.LIST_STORY,
        path: RouterPath.LIST_STORY,
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlocProvider(
              create: (context) =>
                  sl<ListStoryBloc>()..add(const ListStoryEvent.getListStory()),
              child: const ListStoryPage(),
            ),
          );
        },
        routes: [
          GoRoute(
            name: RouteName.DETAIL_STORY,
            path: RouterPath.DETAIL_STORY,
            pageBuilder: (context, state) {
              final data = state.extra as ListStoryResponse;

              return MaterialPage(child: StoryDetailPage(data: data));
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
  );
}

// final router = GoRouter(
//   debugLogDiagnostics: true,
//   navigatorKey: _navigatorState,
//   initialLocation: RouterPath.LOGIN,
//   routes: [
//     GoRoute(
//       name: RouteName.LOGIN,
//       path: RouterPath.LOGIN,
//       pageBuilder: (context, state) {
//         return MaterialPage(
//           child: BlocProvider(
//             create: (context) => sl<LoginBloc>(),
//             child: const LoginPage(),
//           ),
//         );
//       },
//       routes: [
//         GoRoute(
//           name: RouteName.REGISTER,
//           path: RouterPath.REGISTER,
//           pageBuilder: (context, state) {
//             return MaterialPage(
//               child: BlocProvider(
//                 create: (context) => sl<RegisterBloc>(),
//                 child: const RegisterPage(),
//               ),
//             );
//           },
//         ),
//       ],
//     ),
//     GoRoute(
//       name: RouteName.INITIAL,
//       path: RouterPath.INITIAL,
//       pageBuilder: (context, state) {
//         return MaterialPage(
//           child: BlocProvider(
//             create: (context) => sl<ListStoryBloc>()..add(const ListStoryEvent.getListStory()),
//             child: const ListStoryPage(),
//           ),
//         );
//       },
//       routes: [
//         GoRoute(
//           name: RouteName.DETAIL_STORY,
//           path: RouterPath.DETAIL_STORY,
//           pageBuilder: (context, state) {
//             final data = state.extra as ListStoryResponse;

//             return MaterialPage(child: StoryDetailPage(data: data));
//           },
//         ),
//       ],
//     ),
//   ],
//   redirect: (context, state) async {
//     final prefs = sl<SharedPreferencesHelper>();
//     final token = await prefs.getToken;
//     final isLoggedIn = token.isNotEmpty;
//     // final isLoggingIn = state;

//     return isLoggedIn ? null : state.namedLocation(RouteName.LOGIN);
//   },
//   errorBuilder: (context, state) {
//     return const ErrorPage();
//   },
// );
