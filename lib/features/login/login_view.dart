import 'package:flutter/material.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';
import 'package:kirkuc_numara/core/extensions/context_extension.dart';

import '../../core/base/base_view.dart';
import 'login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                SizedBox(height: size.height * 0.03),
                Image.asset("assets/2.png"),
                SizedBox(height: size.height * 0.03),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: size.width * 0.80,
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(
                              Icons.person,
                              color: kBlueColor,
                            ),
                            hintText: "Email girin",
                            fillColor: Color.fromARGB(255, 12, 84, 143),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
                          controller: viewModel.emailController,
                          onSaved: (email) {
                            viewModel.email = email;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Lütfen e-posta adresinizi giriniz';
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Container(
                        width: context.width * 0.8,
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: const Icon(
                              Icons.visibility,
                              color: kBlueColor,
                            ),
                            hintText: "Şifre girin",
                            fillColor: Color.fromARGB(255, 12, 84, 143),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(),
                            ),
                            //fillColor: Colors.green
                          ),
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
                      SizedBox(height: size.height * 0.03),
                      Container(
                        width: context.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: OutlinedButton(
                          onPressed: () => viewModel.login(),
                          child: Center(
                            child: Text('Giriş Yap',
                                style: context.textTheme.subtitle1!
                                    .copyWith(color: kBlueColor)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: context.width * 0.8,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  height: context.height * 0.1,
                  child: Column(
                    children: [
                      Text("Hesabın yok mu?"),
                      TextButton(
                        onPressed: () => viewModel.navigateToSignUpPage(),
                        child: Text('Kayıt ol.', textAlign: TextAlign.end),
                      )
                    ],
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
