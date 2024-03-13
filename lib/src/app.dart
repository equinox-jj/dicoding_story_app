import 'package:flutter/material.dart';

import '../main.dart';
import 'core/config/router.dart';
import 'l10n/l10n.dart';

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