import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class BaseView<T extends Store> extends StatefulWidget {
  final T viewModel;
  final Function(T viewModel) onViewModelReady;
  final Function(BuildContext context, T viewModel) builder;
  final Function(T viewModel)? onDispose;

  const BaseView({
    Key? key,
    required this.viewModel,
    required this.builder,
    required this.onViewModelReady,
    this.onDispose,
  }) : super(key: key);

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = widget.viewModel;
    widget.onViewModelReady(viewModel);
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose!(viewModel);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, viewModel);
  }
}
