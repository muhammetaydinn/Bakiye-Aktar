// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupViewModel on _SignupViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_SignupViewModel.isLoading');

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

  final _$_SignupViewModelActionController =
      ActionController(name: '_SignupViewModel');

  @override
  void _changeLoading() {
    final _$actionInfo = _$_SignupViewModelActionController.startAction(
        name: '_SignupViewModel._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_SignupViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading}
    ''';
  }
}