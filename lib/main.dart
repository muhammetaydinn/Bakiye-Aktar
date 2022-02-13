import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kirkuc_numara/core/managers/theme/theme_manager.dart';

import 'core/constants/app_constants.dart';
import 'core/managers/navigation/navigation_manager.dart';
import 'core/managers/navigation/navigation_route.dart';

Future<void> main() async {
  await _init();
  runApp(const MyApp());
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.title,
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.instance.themeData,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationManager.instance.navigatorKey,
    );
  }
}
