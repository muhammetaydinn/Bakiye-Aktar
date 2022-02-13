// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kirkuc_numara/api/services/auth_service.dart';

Future<void> main() async {
  List<dynamic> contact = [];
  contact.add('deneme 1');
  contact.add('deneme 6');
  contact.add('deneme 5');
  contact.add('deneme 4');
  contact.add('deneme 3');
  contact.add('deneme 2');

  var list = Map<String, dynamic>.fromIterable(contact, key: (e) => e.toString());

  print(list);
}
