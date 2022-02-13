import 'package:flutter/material.dart';

import '../../core/base/base_view.dart';
import 'add_card_view_model.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<AddCardViewModel>(
      viewModel: AddCardViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      builder: (BuildContext context, AddCardViewModel viewModel) {
        return Scaffold();
      },
    );
  }
}
