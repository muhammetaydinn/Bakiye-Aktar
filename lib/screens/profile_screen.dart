import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Profil"),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: ProfilePage(),
    );
  }
}