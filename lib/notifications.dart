import 'package:flutter/material.dart';
import 'package:kirkuc_numara/constants/color_constant.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OLAYLAR OLAYLAAR"),
        centerTitle: true,
        backgroundColor: kBlueColor,
      ),
      body: Center(
        child: Expanded(
          child: Container(
              decoration: BoxDecoration(color: kBlueColor.withOpacity(0.15))),
        ),
      ),
    );
  }
}
