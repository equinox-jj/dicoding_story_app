import 'package:dicoding_story_app/core/common/utils/network/dio_helper.dart';
import 'package:flutter/material.dart';

import 'core/config/route_name.dart';
import 'core/config/router.dart';
import 'core/helper/shared_preferences_helper.dart';
import 'di/injector.dart';
import 'l10n/l10n.dart';
import 'main.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  init();

  final prefs = sl<SharedPreferencesHelper>();
  final token = await prefs.getToken;
  final isLoggedIn = token.isNotEmpty;
  final initialLocation = isLoggedIn ? RouterPath.LIST_STORY : RouterPath.INITIAL;

  runApp(MyApp(initialLocation: initialLocation));
}

class MyApp extends StatelessWidget {
  final String? initialLocation;

  const MyApp({super.key, this.initialLocation});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
      routerConfig: router(initialLocation),
    );
  }
}
