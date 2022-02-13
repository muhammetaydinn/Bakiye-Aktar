import 'package:flutter/material.dart';

import 'i_navigation_manager.dart';

class NavigationManager implements INavigationManager {
  static NavigationManager? _instance;
  static NavigationManager get instance {
    return _instance ??= NavigationManager._init();
  }

  NavigationManager._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  bool clearAllPages(Route<dynamic> route) => false;

  @override
  Future<void> navigate({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  @override
  Future<void> navigateClear({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(path!, clearAllPages, arguments: data);
  }
}
