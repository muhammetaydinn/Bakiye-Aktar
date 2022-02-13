import 'package:flutter/material.dart';
import 'package:kirkuc_numara/core/extensions/context_extension.dart';

import '../../core/base/base_view.dart';
import 'signup_view_model.dart';

class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SignupViewModel>(
      viewModel: SignupViewModel(),
      onViewModelReady: (viewModel) {
        viewModel.setContext(context);
        viewModel.init();
      },
      builder: (BuildContext context, SignupViewModel viewModel) {
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
                      children: [
                        TextFormField(
                          controller: viewModel.nameController,
                          onSaved: (name) {
                            viewModel.name = name;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) return 'Lütfen isminizi giriniz.';
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: viewModel.emailController,
                          onSaved: (email) {
                            viewModel.email = email;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) return 'Lütfen e-posta adresinizi giriniz.';
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: viewModel.passwordController,
                          onSaved: (password) {
                            viewModel.password = password;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Lütfen şifrenizi giriniz.';
                            } else if (value.length < 6) {
                              return 'Şifreniz minimum 6 karakter olabilir.';
                            }
                            return null;
                          },
                        ),
                        OutlinedButton(
                          onPressed: () => viewModel.signup(),
                          child: Center(
                            child: Text('Kayıt Ol', style: context.textTheme.subtitle1!.copyWith(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
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
