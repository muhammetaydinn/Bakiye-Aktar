import 'package:flutter/material.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';

class AbonmanAktarPage extends StatefulWidget {
  const AbonmanAktarPage({Key? key}) : super(key: key);

  @override
  _AbonmanAktarPageState createState() => _AbonmanAktarPageState();
}

class _AbonmanAktarPageState extends State<AbonmanAktarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Abonman Aktar"),
        centerTitle: true,
        backgroundColor: kBlueColor,
      ),
    );
  }
}
