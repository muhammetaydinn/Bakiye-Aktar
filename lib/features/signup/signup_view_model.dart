import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../core/base/base_view_model.dart';

part 'signup_view_model.g.dart';

class SignupViewModel = _SignupViewModel with _$SignupViewModel;

abstract class _SignupViewModel with Store, BaseViewModel {
  String? name;
  String? email;
  String? password;

  GlobalKey<FormState>? formState;
  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    formState = GlobalKey();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  Future<void> signup() async {
    try {
      if (formState!.currentState!.validate()) {
        formState!.currentState!.save();
        await authService.createUser(email!, password!, name!);
        await navigationManager.navigate(path: '/home');
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> navigateToHomePage() async {
    await navigationManager.navigate(path: '/home');
  }
}
