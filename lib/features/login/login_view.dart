import 'package:flutter/material.dart';
import 'package:kirkuc_numara/core/extensions/context_extension.dart';

import '../../core/base/base_view.dart';
import 'login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginViewModel>(
      viewModel: LoginViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      onDispose: (viewModel) {
        viewModel.emailController!.dispose();
        viewModel.passwordController!.dispose();
      },
      builder: (BuildContext context, LoginViewModel viewModel) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(flex: 4, child: Image.asset("assets/2.png")),
                Expanded(
                  flex: 6,
                  child: Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: viewModel.emailController,
                            onSaved: (email) {
                              viewModel.email = email;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) return 'Lütfen e-posta adresinizi giriniz';
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: TextFormField(
                            controller: viewModel.passwordController,
                            onSaved: (password) {
                              viewModel.password = password;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Lütfen şifrenizi giriniz';
                              } else if (value.length < 6) {
                                return 'Şifreniz minimum 6 karakter olabilir';
                              }
                              return null;
                            },
                          ),
                        ),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () => viewModel.login(),
                            child: Center(
                              child: Text('Giriş Yap', style: context.textTheme.subtitle1!.copyWith(color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                    onPressed: () => viewModel.navigateToSignUpPage(),
                    child: Text('Kayıt ol.', textAlign: TextAlign.end),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
