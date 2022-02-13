import 'package:cloud_firestore/cloud_firestore.dart';

class CardDataModel {
  String cardNumber;
  double balance;
  int remainingIssuance;
  DateTime revisionDate;
  DateTime subscriptionDate;

  CardDataModel({
    required this.cardNumber,
    required this.balance,
    required this.remainingIssuance,
    required this.revisionDate,
    required this.subscriptionDate,
  });

  factory CardDataModel.fromJson(Map<String, dynamic> data) {
    return CardDataModel(
      cardNumber: data['card_number'] as String,
      balance: data['balance'] as double,
      remainingIssuance: data['remaining_issuance'] as int,
      revisionDate: (data['revision_date'] as Timestamp).toDate(),
      subscriptionDate: (data['subscription_end_date'] as Timestamp).toDate(),
    );
  }
}
