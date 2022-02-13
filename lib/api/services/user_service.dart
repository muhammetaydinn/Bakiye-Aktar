import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/firebase_collection_keys.dart';
import 'i_service.dart';


class UserService extends IService {
  final collectionPath = FirebaseCollectionKeys.user;

   Future<void> addUserInfo(String name, String phoneNumber) async {
    await docRef(collectionPath).update({
      'name': name,
      'phoneNumber': phoneNumber,
    });
  }

   Future<dynamic> getUserInfo() async {
    var data = await docRef(collectionPath).get();
    return data.data();
  }

   Future<void> addContact(dynamic contact) async {
    await docRef(collectionPath).update({
      'contacts': FieldValue.arrayUnion([contact]),
    });
  }

   Future<dynamic> getContacts() async {
    var data = await docRef(collectionPath).get();
    return data.data;
  }

   Future<void> applyScholarship(dynamic scholarship) async {
    await docRef(collectionPath).update({
      'scholarships': FieldValue.arrayUnion([scholarship]),
    });
  }

   Future<dynamic> getScholarships() async {
    var data = await docRef(collectionPath).get();
    return data.data;
  }
}
