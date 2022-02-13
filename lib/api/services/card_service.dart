import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/firebase_collection_keys.dart';
import 'i_service.dart';

class CardService extends IService {
  final collectionPath = FirebaseCollectionKeys.card;
  final _rng = Random();

  Future<void> addCard(String cardNumber) async {
    await docRef(collectionPath).update(
      {
        'cardNumber': cardNumber,
        'isSubscription': true,
        'balance': _rng.nextInt(10),
        'subscriptionAmount': _rng.nextInt(10),
        'subscriptionEndDate': DateTime.now(),
        'visaEndDate': DateTime.now(),
      },
    );
  }

  Future<dynamic> getCard() async {
    var data = await docRef(collectionPath).get();
    return data.data();
  }

  Future<void> addTransaction(dynamic transaction) async {
    await docRef(collectionPath).update({
      'transactions': FieldValue.arrayUnion([transaction]),
    });
  }

  Future<dynamic> getTransactions() async {
    var data = await docRef(collectionPath).get();
    return data.data;
  }
}
