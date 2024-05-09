import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_birds/exceptions/create_user_exception.dart';

import '../../util/functional/result.dart';

class UserRepository {
  UserRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Future<ResultStrictly<void, CreateUserException>> createUser(
      String email, String password, String userName) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      try {
        await _firebaseAuth.currentUser?.updateDisplayName(userName);
      } catch (_) {
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
