import 'dart:async';

import 'package:flutter_birds/domains/birds_user.dart';
import 'package:flutter_birds/providers/repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends AsyncNotifier<BirdsUser?> {
  @override
  FutureOr<BirdsUser?> build() {
    final userRepository = ref.watch(userRepositoryProvider);
    return userRepository.getUser();
  }

  Future<void> refreshUser() async {
    final userRepository = ref.watch(userRepositoryProvider);
    state = AsyncValue.data(await userRepository.getUser());
  }
}
