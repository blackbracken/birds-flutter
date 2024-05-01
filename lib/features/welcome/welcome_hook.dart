import 'package:flutter_birds/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

WelcomeUiModel useWelcomeUiModel(WidgetRef ref) {
  final router = ref.watch(routerProvider);

  void goRegister() {
    router.pushNamed(registerRoute);
  }

  return WelcomeUiModel(goRegister: goRegister);
}

class WelcomeUiModel {
  WelcomeUiModel({required this.goRegister});

  final void Function() goRegister;
}
