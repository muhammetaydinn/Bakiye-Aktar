import 'package:firebase_auth/firebase_auth.dart';

import '../constants/firebase_collection_keys.dart';
import 'i_service.dart';

class AuthService extends IService {
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    var userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }

  Future<void> signOut() async {
    return await auth.signOut();
  }

  Future<User?> createUser(String email, String password, String name) async {
    var userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
    await store.collection(FirebaseCollectionKeys.user).doc(userCredential.user!.uid).set({
      'email': email,
      'name': name,
    });
    return userCredential.user;
  }
}
