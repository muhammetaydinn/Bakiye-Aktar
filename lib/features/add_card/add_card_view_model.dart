import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../core/base/base_view_model.dart';

part 'add_card_view_model.g.dart';

class AddCardViewModel = _AddCardViewModel with _$AddCardViewModel;

abstract class _AddCardViewModel with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {}
}
