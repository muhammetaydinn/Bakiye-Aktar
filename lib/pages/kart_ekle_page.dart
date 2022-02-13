import 'package:flutter/material.dart';
import 'package:flutter_application_7/constants/color_constant.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kart Ekle"),
        centerTitle: true,
        backgroundColor: kBlueColor,
      ),
    );
  }
}
