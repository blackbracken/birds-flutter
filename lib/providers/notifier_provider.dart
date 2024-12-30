import 'package:flutter_birds/domains/birds_user.dart';
import 'package:flutter_birds/notifiers/user_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userNotifierProvider =
    AsyncNotifierProvider<UserNotifier, BirdsUser?>(UserNotifier.new);
