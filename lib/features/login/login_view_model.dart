import 'package:flutter/material.dart';
import 'package:kirkuc_numara/core/constants/navigation_constants.dart';
import 'package:mobx/mobx.dart';
import '../../core/base/base_view_model.dart';

part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModel with _$LoginViewModel;

abstract class _LoginViewModel with Store, BaseViewModel {
  String? email;
  String? password;

  GlobalKey<FormState>? formState;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    formState = GlobalKey();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  bool paswordIsHidden = true;

  @action
  void changePasswordHidden() {
    paswordIsHidden = !paswordIsHidden;
  }

  Future<void> login() async {
    try {
      if (formState!.currentState!.validate()) {
        formState!.currentState!.save();
        await authService.signInWithEmailAndPassword(email!, password!);
        navigateToHomePage();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> navigateToHomePage() async {
    await navigationManager.navigate(path: NavigationConstants.home);
  }

  Future<void> navigateToSignUpPage() async {
    await navigationManager.navigate(path: NavigationConstants.signup);
  }
}
