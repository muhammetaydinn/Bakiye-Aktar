import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/firebase_collection_keys.dart';
import 'interface/i_card_service.dart';
import 'interface/i_service.dart';

class CardService extends ICardService with IService {
  static CardService? _instace;
  static CardService get instance {
    return _instace ??= CardService._init();
  }

  CardService._init();

  final collectionPath = FirebaseCollectionKeys.card;
  final _rng = Random();

  @override
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

  @override
  Future<dynamic> getCard() async {
    var data = await docRef(collectionPath).get();
    return data.data();
  }

  @override
  Future<void> addTransaction(dynamic transaction) async {
    await docRef(collectionPath).update({
      'transactions': FieldValue.arrayUnion([transaction]),
    });
  }

  @override
  Future<dynamic> getTransactions() async {
    var data = await docRef(collectionPath).get();
    return data.data;
  }
}
