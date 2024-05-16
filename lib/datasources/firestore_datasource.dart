import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_birds/domains/birds_user.dart';

class FirestoreDatasource {
  FirestoreDatasource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<void> addUser(BirdsUser user) async {
    await _firestore.collection('users').doc(user.userId).set(user.toJson());
  }
}
