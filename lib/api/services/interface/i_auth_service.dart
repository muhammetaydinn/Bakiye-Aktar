import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthService {
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
  Future<User?> createUser(String email, String password, String name);
}
