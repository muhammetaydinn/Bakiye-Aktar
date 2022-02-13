import 'package:flutter/material.dart';
import 'package:kirkuc_numara/features/login/login_view.dart';
import '../../../components/page/page_not_found.dart';
import '../../../features/signup/signup_view.dart';
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

      case NavigationConstants.login:
        return defaultNavigate(const LoginView());

      case NavigationConstants.signup:
        return defaultNavigate(const SignupView());

      default:
        return defaultNavigate(const PageNotFound());
    }
  }

  MaterialPageRoute defaultNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
