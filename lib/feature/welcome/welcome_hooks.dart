import 'package:flutter/cupertino.dart';
import 'package:flutter_birds/router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'welcome_ui_model.dart';

WelcomeUiModel useWelcomeUiModel(WidgetRef ref) {
  final router = ref.watch(routerProvider);

  final userName = useState("");
  final password = useState("");

  void changeUserName(String text) {
    userName.value = text;
  }

  void changePassword(String text) {
    password.value = text;
  }

  void goRegister() {
    router.pushNamed(registerRoute);
  }

  useEffect(() {
    debugPrint("blackbracken name: ${userName.value}, pwd: ${password.value}");
    return null;
  }, [userName.value, password.value]);

  return WelcomeUiModel(
      state: WelcomeUiState(userName: userName.value, password: password.value),
      changeUserName: changeUserName,
      changePassword: changePassword,
      goRegister: goRegister);
}

class WelcomeUiModel {
  WelcomeUiModel(
      {required this.state,
      required this.changeUserName,
      required this.changePassword,
      required this.goRegister});

  final WelcomeUiState state;
  final void Function(String) changeUserName;
  final void Function(String) changePassword;
  final void Function() goRegister;
}
