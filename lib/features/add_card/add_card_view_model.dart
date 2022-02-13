import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../core/base/base_view_model.dart';
import '../../core/constants/navigation_constants.dart';

part 'add_card_view_model.g.dart';

class AddCardViewModel = _AddCardViewModel with _$AddCardViewModel;

abstract class _AddCardViewModel with Store, BaseViewModel {
  String? cardNumber;
  TextEditingController? cardNumberController;

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {
    cardNumberController = TextEditingController();
  }

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  Future<void> addCard() async {
    try {
      await cardService.addCard(cardNumber!);
      navigateToSignUpPage();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> navigateToSignUpPage() async {
    await navigationManager.navigate(path: NavigationConstants.home);
  }
}
