import 'package:flutter/material.dart';
import 'package:flutter_application_7/constants/color_constant.dart';
import 'package:flutter_application_7/sign_up_page.dart';

import 'screens/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool login = true;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, color: kBlueColor),
            ),
            SizedBox(height: size.height * 0.03),
            Center(
              child: Image.asset(
                "assets/1.jpg",
                height: size.height * 0.35,
                alignment: Alignment.center,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              width: size.width * 0.80,
              child: TextField(
                onChanged: (value) {},
                cursorColor: kBlueColor,
                decoration: const InputDecoration(
                  icon: const Icon(
                    Icons.person,
                    color: kBlueColor,
                  ),
                  hintText: "Your Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: size.width * 0.80,
              child: TextField(
                keyboardType: TextInputType.text,
                onChanged: (value) {},
                cursorColor: kBlueColor,
                decoration: InputDecoration(
                  hintText: "Password",
                  icon: const Icon(
                    Icons.lock,
                    color: kBlueColor,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: kBlueColor,
                    ),
                  ),
                  border: InputBorder.none,
                ),
                obscureText: _obscureText,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: kWhiteColor),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: kBlueColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(
                          color: kWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    login
                        ? "Don’t have an Account ? "
                        : "Already have an Account ? ",
                    style: const TextStyle(color: kBlueColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      login ? "Sign Up" : "Sign In",
                      style: const TextStyle(
                        color: kBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
