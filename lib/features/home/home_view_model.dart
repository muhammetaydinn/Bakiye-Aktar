import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../api/models/card_model.dart';
import '../../core/base/base_view_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModel with _$HomeViewModel;

abstract class _HomeViewModel with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() async {
    await authService.signInWithEmailAndPassword('muhammed.sbakirhan@gmail.com', 'msb1365x');
    await getUserCard();
  }

  @observable
  bool isLoading = false;

  @action
  void _changeLoading() {
    isLoading = !isLoading;
  }

  @observable
  CardDataModel? cardData;

  @action
  Future<void> getUserCard() async {
    _changeLoading();
    cardData = await cardService.getCard();
    _changeLoading();
  }

  Future<void> navigateToAddCardPage() async {
    await navigationManager.navigate(path: '/addcard');
  }
}
