import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../core/base/base_view.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      builder: (BuildContext context, HomeViewModel viewModel) {
        return Scaffold(
          body: Observer(
            builder: (BuildContext context) {
              if (viewModel.isLoading) {
                return Center(child: CircularProgressIndicator());
              } else {
                if (viewModel.cardData == null) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.add),
                        Text('Kart Ekle'),
                      ],
                    ),
                  );
                } else {
                  return Center(
                    child: Text(
                      'Kart var',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  );
                }
              }
            },
          ),
        );
      },
    );
  }
}
