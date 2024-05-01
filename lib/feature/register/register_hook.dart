import 'package:flutter_hooks/flutter_hooks.dart';

// RFCに未準拠だが簡易チェックなので許容
const String _emailValidationRegex =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

RegisterUiModel useRegisterUiModel() {
  final email = useState('');
  final shouldShowEmailError = useState(false);
  final password = useState('');
  final userName = useState('');

  void onChangedEmail(String text) {
    email.value = text;

    if (shouldShowEmailError.value && _isValidEmail(text)) {
      shouldShowEmailError.value = false;
    }
  }

  void onUnfocusedEmail() {
    shouldShowEmailError.value = !_isValidEmail(email.value);
  }

  void onChangedPassword(String text) {
    password.value = text;
  }

  void onChangedUserName(String text) {
    userName.value = text;
  }

  return RegisterUiModel(
    email: email.value,
    password: password.value,
    userName: userName.value,
    shouldShowEmailError: shouldShowEmailError.value,
    onChangedEmail: onChangedEmail,
    onUnfocusedEmail: onUnfocusedEmail,
    onChangedPassword: onChangedPassword,
    onChangedUserName: onChangedUserName,
  );
}

bool _isValidEmail(String email) {
  return RegExp(_emailValidationRegex).hasMatch(email);
}

class RegisterUiModel {
  final String email;
  final String password;
  final String userName;
  final bool shouldShowEmailError;
  final Function(String) onChangedEmail;
  final Function() onUnfocusedEmail;
  final Function(String) onChangedPassword;
  final Function(String) onChangedUserName;

  RegisterUiModel({
    required this.email,
    required this.password,
    required this.userName,
    required this.shouldShowEmailError,
    required this.onChangedEmail,
    required this.onUnfocusedEmail,
    required this.onChangedPassword,
    required this.onChangedUserName,
  });
}
