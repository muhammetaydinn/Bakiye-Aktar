import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore store = FirebaseFirestore.instance;
  String get currentUserUID => FirebaseAuth.instance.currentUser == null ? '' : FirebaseAuth.instance.currentUser!.uid;
  DocumentReference docRef(String collectionPath) => store.collection(collectionPath).doc(currentUserUID);
}
