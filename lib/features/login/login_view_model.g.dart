// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_LoginViewModel.isLoading');

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

  final _$paswordIsHiddenAtom = Atom(name: '_LoginViewModel.paswordIsHidden');

  @override
  bool get paswordIsHidden {
    _$paswordIsHiddenAtom.reportRead();
    return super.paswordIsHidden;
  }

  @override
  set paswordIsHidden(bool value) {
    _$paswordIsHiddenAtom.reportWrite(value, super.paswordIsHidden, () {
      super.paswordIsHidden = value;
    });
  }

  final _$_LoginViewModelActionController =
      ActionController(name: '_LoginViewModel');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_LoginViewModelActionController.startAction(
        name: '_LoginViewModel._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_LoginViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePasswordHidden() {
    final _$actionInfo = _$_LoginViewModelActionController.startAction(
        name: '_LoginViewModel.changePasswordHidden');
    try {
      return super.changePasswordHidden();
    } finally {
      _$_LoginViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
paswordIsHidden: ${paswordIsHidden}
    ''';
  }
}
