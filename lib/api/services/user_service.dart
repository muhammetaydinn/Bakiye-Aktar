import 'package:cloud_firestore/cloud_firestore.dart';

import '../constants/firebase_collection_keys.dart';
import 'interface/i_service.dart';
import 'interface/i_user_service.dart';

class UserService extends IUserService with IService {
  static UserService? _instace;
  static UserService get instance {
    return _instace ??= UserService._init();
  }

  UserService._init();

  final collectionPath = FirebaseCollectionKeys.user;

  @override
  Future<void> addUserInfo(String name, String phoneNumber) async {
    await docRef(collectionPath).update({
      'name': name,
      'phoneNumber': phoneNumber,
    });
  }

  @override
  Future<dynamic> getUserInfo() async {
    var data = await docRef(collectionPath).get();
    return data.data();
  }

  @override
  Future<void> addContact(dynamic contact) async {
    await docRef(collectionPath).update({
      'contacts': FieldValue.arrayUnion([contact]),
    });
  }

  @override
  Future<dynamic> getContacts() async {
    var data = await docRef(collectionPath).get();
    return data.data;
  }

  @override
  Future<void> applyScholarship(dynamic scholarship) async {
    await docRef(collectionPath).update({
      'scholarships': FieldValue.arrayUnion([scholarship]),
    });
  }

  @override
  Future<dynamic> getScholarships() async {
    var data = await docRef(collectionPath).get();
    return data.data;
  }
}
