import 'package:dicoding_story_app/features/auth/presentation/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'di/injector.dart';
import 'features/auth/presentation/login/bloc/login_bloc.dart';
import 'features/auth/presentation/register/bloc/register_bloc.dart';
import 'features/story/presentation/addstory/bloc/add_story_bloc.dart';
import 'features/story/presentation/liststory/bloc/list_story_bloc.dart';
import 'features/story/presentation/storydetail/bloc/story_detail_bloc.dart';
import 'l10n/l10n.dart';
import 'main.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<RegisterBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<LoginBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<AddStoryBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<ListStoryBloc>(),
        ),
        BlocProvider(
          create: (context) => sl<StoryDetailBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        home: const RegisterPage(),
      ),
    );
  }
}
