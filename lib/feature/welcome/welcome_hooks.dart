import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'welcome_ui_state.dart';

WelcomeUiModel useWelcomeUiModel() {
  final userName = useState("");
  final password = useState("");

  void changeUserName(String text) {
    userName.value = text;
  }

  void changePassword(String text) {
    password.value = text;
  }

  useEffect(() {
    debugPrint("blackbracken name: ${userName.value}, pwd: ${password.value}");
    return null;
  }, [userName.value, password.value]);

  return WelcomeUiModel(
      state: WelcomeUiState(userName: userName.value, password: password.value),
      changeUserName: changeUserName,
      changePassword: changePassword);
}

class WelcomeUiModel {
  WelcomeUiModel(
      {required this.state,
      required this.changeUserName,
      required this.changePassword});

  final WelcomeUiState state;
  final void Function(String) changeUserName;
  final void Function(String) changePassword;
}
