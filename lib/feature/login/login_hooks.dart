import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'login_ui_model.dart';

LoginUiModelState useLoginUiModel() {
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

  return LoginUiModelState(
      model: LoginUiModel(userName: userName.value, password: password.value),
      changeUserName: changeUserName,
      changePassword: changePassword);
}

class LoginUiModelState {
  LoginUiModelState(
      {required this.model,
      required this.changeUserName,
      required this.changePassword});

  final LoginUiModel model;
  final void Function(String) changeUserName;
  final void Function(String) changePassword;
}
