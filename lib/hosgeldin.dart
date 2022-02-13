import 'package:flutter/material.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';
import 'package:kirkuc_numara/login_page.dart';
import 'package:kirkuc_numara/sign_up_page.dart';

class Hosgeldin extends StatefulWidget {
  const Hosgeldin({Key? key}) : super(key: key);

  @override
  _HosgeldinState createState() => _HosgeldinState();
}

class _HosgeldinState extends State<Hosgeldin> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05),
            const Text(
              "43 NUMARA'YA HOŞGELDİNİZ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: kBlueColor),
            ),
            SizedBox(height: size.height * 0.05),
            Center(
              child: Image.asset(
                "assets/2.png",
                height: size.height * 0.45,
              ),
            ),
            SizedBox(height: size.height * 0.05),
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
                          return const LoginPage();
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
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(color: kWhiteColor),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: kBlueColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      textStyle: const TextStyle(
                          color: Color(0xFFF1E6FF),
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
