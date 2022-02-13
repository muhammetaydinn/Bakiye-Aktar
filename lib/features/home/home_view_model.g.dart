// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_HomeViewModel.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$cardDataAtom = Atom(name: '_HomeViewModel.cardData');

  @override
  CardDataModel? get cardData {
    _$cardDataAtom.reportRead();
    return super.cardData;
  }

  @override
  set cardData(CardDataModel? value) {
    _$cardDataAtom.reportWrite(value, super.cardData, () {
      super.cardData = value;
    });
  }

  final _$getUserCardAsyncAction = AsyncAction('_HomeViewModel.getUserCard');

  @override
  Future<void> getUserCard() {
    return _$getUserCardAsyncAction.run(() => super.getUserCard());
  }

  final _$_HomeViewModelActionController =
      ActionController(name: '_HomeViewModel');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_HomeViewModelActionController.startAction(
        name: '_HomeViewModel._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_HomeViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
cardData: ${cardData}
    ''';
  }
}
