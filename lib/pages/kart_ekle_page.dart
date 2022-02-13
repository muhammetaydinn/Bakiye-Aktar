import 'package:flutter/material.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';

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
