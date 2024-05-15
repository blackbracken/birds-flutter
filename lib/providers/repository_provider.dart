import 'package:flutter_birds/providers/clock_provider.dart';
import 'package:flutter_birds/providers/firebase_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repositories/user_repository.dart';

final userRepositoryProvider = Provider((ref) => UserRepository(
    ref.watch(clockProvider),
    ref.watch(firebaseAuthProvider),
    ref.watch(firebaseFirestoreProvider)));
