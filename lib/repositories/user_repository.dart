import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_birds/domains/birds_user.dart';
import 'package:flutter_birds/exceptions/create_user_exception.dart';

import '../../util/functional/result.dart';
import '../util/clock.dart';

class UserRepository {
  UserRepository(this._clock, this._auth, this._firestore);

  final Clock _clock;
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  Future<ResultStrictly<void, CreateUserException>> createUser(
      String email, String password, String userName) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      final userId = credential.user?.uid;
      if (userId == null) {
        throw Exception('userId is null');
      }

      final user = BirdsUser(
        userId: userId,
        userName: userName,
        imageUrl: null,
        createdAt: _clock.nowUtc(),
        followeeIds: [],
        followerIds: [],
        likedPostIds: [],
      );

      await _firestore.collection('users').doc(userId).set(user.toJson());

      try {
        await _auth.currentUser?.updateDisplayName(userName);
      } on FirebaseException catch (_) {
        // ユーザー名の更新は失敗してもignore
      }

      return Result.success(null);
    } on FirebaseAuthException catch (e) {
      return Result.failure(switch (e.code) {
        'email-already-in-use' => const CreateUserEmailAlreadyExistsException(),
        _ => CreateUserOtherwiseException(e),
      });
    }
  }
}
