import 'package:firebase_auth/firebase_auth.dart';

import '../constants/firebase_collection_keys.dart';
import 'interface/i_auth_service.dart';
import 'interface/i_service.dart';

class AuthService extends IAuthService with IService {
  static AuthService? _instace;
  static AuthService get instance {
    return _instace ??= AuthService._init();
  }

  AuthService._init();

  @override
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    var userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential.user;
  }

  @override
  Future<void> signOut() async {
    return await auth.signOut();
  }

  @override
  Future<User?> createUser(String email, String password, String name) async {
    var userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
    await store.collection(FirebaseCollectionKeys.user).doc(userCredential.user!.uid).set({
      'email': email,
      'name': name,
    });
    return userCredential.user;
  }
}
