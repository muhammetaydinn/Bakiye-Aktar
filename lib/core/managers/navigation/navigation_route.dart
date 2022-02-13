import 'package:flutter/material.dart';
import '../../constants/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute? _instance;
  static NavigationRoute get instance {
    return _instance ??= NavigationRoute._init();
  }

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.home:
        return defaultNavigate(Container());

      default:
        return defaultNavigate(Container());
    }
  }

  MaterialPageRoute defaultNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
