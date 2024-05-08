import 'package:flutter_birds/exceptions/create_user_exception.dart';
import 'package:flutter_birds/features/register/register_ui_model.dart';
import 'package:flutter_birds/providers/repository_provider.dart';
import 'package:flutter_birds/util/scope_function.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// RFCに未準拠だが簡易チェックなので許容
const String _emailValidationRegex =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

RegisterUiModel useRegisterUiModel(WidgetRef ref) {
  final isLoading = useState(false);
  final email = useState('');
  final shouldShowEmailError = useState(false);
  final password = useState('');
  final userName = useState('');
  final shownSnackBar = useState<RegisterSnackBar?>(null);

  final userRepository = ref.watch(userRepositoryProvider);

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

  Future<void> onClickedSignUp() async {
    try {
      shownSnackBar.value = null;
      isLoading.value = true;

      final emailValue = email.value.takeIf(_isValidEmail);
      final passwordValue = password.value;
      if (emailValue == null) return;

      final userNameValue =
          userName.value.takeIf((text) => text.isNotEmpty) ?? "default";

      (await userRepository.createUser(
        emailValue,
        passwordValue,
        userNameValue,
      ))
          .onSuccess((value) => null)
          .onFailure((exception) {
        shownSnackBar.value = switch (exception) {
          CreateUserEmailAlreadyExistsException() =>
            RegisterSnackBar.AlreadyUserExists,
          _ => RegisterSnackBar.SomethingHappened,
        };
      });
    } finally {
      isLoading.value = false;
    }
  }

  return RegisterUiModel(
    isLoading: isLoading.value,
    email: email.value,
    password: password.value,
    userName: userName.value,
    shouldShowEmailError: shouldShowEmailError.value,
    shownSnackBar: shownSnackBar.value,
    onChangedEmail: onChangedEmail,
    onUnfocusedEmail: onUnfocusedEmail,
    onChangedPassword: onChangedPassword,
    onChangedUserName: onChangedUserName,
    onClickedSignUp: onClickedSignUp,
  );
}

bool _isValidEmail(String email) {
  return RegExp(_emailValidationRegex).hasMatch(email);
}
