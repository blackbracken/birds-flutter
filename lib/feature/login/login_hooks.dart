import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'login_ui_state.dart';

LoginUiModel useLoginUiModel() {
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

  return LoginUiModel(
      state: LoginUiState(userName: userName.value, password: password.value),
      changeUserName: changeUserName,
      changePassword: changePassword);
}

class LoginUiModel {
  LoginUiModel(
      {required this.state,
      required this.changeUserName,
      required this.changePassword});

  final LoginUiState state;
  final void Function(String) changeUserName;
  final void Function(String) changePassword;
}
