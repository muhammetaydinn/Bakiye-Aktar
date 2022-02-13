// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';
import 'package:kirkuc_numara/login_page.dart';


import 'screens/home_screen.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final bool login = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold, color: kBlueColor),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/3.jpg",
              color: kBlueColor,
            ),
            Container(
              width: size.width * 0.80,
              child: TextField(
                onChanged: (value) {},
                cursorColor: kBlueColor,
                decoration: InputDecoration(
                  icon: Icon(
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
                  icon: Icon(
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
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  child: Text(
                    "SIGNUP",
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                      textStyle: TextStyle(
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
                    style: TextStyle(color: kBlueColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      login ? "Sign Up" : "Sign In",
                      style: TextStyle(
                        color: kBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
