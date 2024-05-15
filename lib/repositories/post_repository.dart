import 'package:cloud_firestore/cloud_firestore.dart';

class PostRepository {
  PostRepository(this._firestore);

  final FirebaseFirestore _firestore;

  Future<void> post() async {
    await _firestore.collection('posts').add({
      'title': 'title',
      'content': 'content',
    });
  }
}
