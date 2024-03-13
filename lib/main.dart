import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import 'src/app.dart';
import 'src/core/common/utils/network/dio_helper.dart';
import 'src/core/config/route_name.dart';
import 'src/core/helper/shared_preferences_helper.dart';
import 'src/di/injector.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_localizations/flutter_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final requestMultiplePermissions = await [
    Permission.photos,
    Permission.camera,
    Permission.storage
  ].request();

  requestMultiplePermissions.forEach((key, value) async {
    if (value.isDenied || value.isPermanentlyDenied) {
      requestMultiplePermissions;
    }
  });

  final dio = DioHelper();

  dio.init();
  init();

  final prefs = sl<SharedPreferencesHelper>();
  final token = await prefs.getToken;
  final isLoggedIn = token.isNotEmpty;
  final initialLocation = isLoggedIn ? RouterPath.LIST_STORY : RouterPath.INITIAL;

  runApp(MyApp(initialLocation: initialLocation));
}
