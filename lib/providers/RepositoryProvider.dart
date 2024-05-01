import 'package:flutter_birds/providers/FirebaseProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/UserRepository.dart';

final userRepositoryProvider =
    Provider((ref) => UserRepository(ref.watch(firebaseAuthProvider)));
