import 'package:flutter/material.dart';
import 'package:kirkuc_numara/api/services/auth_service.dart';

import '../../api/services/card_service.dart';
import '../../api/services/user_service.dart';
import '../managers/navigation/navigation_manager.dart';

abstract class BaseViewModel {
  BuildContext? context;

  final AuthService authService = AuthService.instance;
  final UserService userService = UserService.instance;
  final CardService cardService = CardService.instance;

  final NavigationManager navigationManager = NavigationManager.instance;

  void setContext(BuildContext context);
  void init();
}
