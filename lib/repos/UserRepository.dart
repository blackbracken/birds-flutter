import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_birds/exceptions/CreateUserException.dart';

import '../../util/functional/Result.dart';

class UserRepository {
  UserRepository(this.firebaseAuth);

  final FirebaseAuth firebaseAuth;

  Future<ResultStrictly<void, CreateUserException>> createUser(
      String email, String password, String userName) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      try {
        await FirebaseAuth.instance.currentUser?.updateDisplayName(userName);
      } catch (_) {
        // ユーザー名の更新は失敗してもignore
      }

      return Result.success(null);
    } on FirebaseAuthException catch (e) {
      return Result.failure(switch (e.code) {
        'email-already-in-use' => CreateUserEmailAlreadyExistsException(),
        _ => CreateUserOtherwiseException(e),
      });
    }
  }
}
