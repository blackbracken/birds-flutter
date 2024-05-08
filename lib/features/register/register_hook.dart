import 'package:flutter_birds/exceptions/create_user_exception.dart';
import 'package:flutter_birds/features/register/register_ui_model.dart';
import 'package:flutter_birds/hooks/use_l10n.dart';
import 'package:flutter_birds/providers/repository_provider.dart';
import 'package:flutter_birds/router/router.dart';
import 'package:flutter_birds/util/scope_function.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// RFCに未準拠だが簡易チェックなので許容
const String _emailValidationRegex =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

// 8文字以上で大文字小文字数字がそれぞれ1文字以上
const String _passwordValidationRegex =
    r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$";

RegisterUiModel useRegisterUiModel(WidgetRef ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  final router = ref.watch(routerProvider);

  final isLoading = useState(false);
  final email = useState('');
  final shouldShowEmailError = useState(false);
  final shouldShowPasswordError = useState(false);
  final password = useState('');
  final userName = useState('');
  final shownSnackBar = useState<RegisterSnackBar?>(null);

  final l10n = useL10n();

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

    if (shouldShowPasswordError.value && _isValidPassword(text)) {
      shouldShowPasswordError.value = false;
    }
  }

  void onUnfocusedPassword() {
    shouldShowPasswordError.value = !_isValidPassword(password.value);
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

      final userNameValue = userName.value.takeIf((text) => text.isNotEmpty) ??
          l10n.register_default_user_name;

      (await userRepository.createUser(
        emailValue,
        passwordValue,
        userNameValue,
      ))
          .onSuccess((value) => router.clearAndGo(BirdsRoute.Timeline))
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
    shouldShowPasswordError: shouldShowPasswordError.value,
    canRegister: !isLoading.value &&
        _isValidEmail(email.value) &&
        _isValidPassword(password.value),
    shownSnackBar: shownSnackBar.value,
    onChangedEmail: onChangedEmail,
    onUnfocusedEmail: onUnfocusedEmail,
    onChangedPassword: onChangedPassword,
    onUnfocusedPassword: onUnfocusedPassword,
    onChangedUserName: onChangedUserName,
    onClickedSignUp: onClickedSignUp,
  );
}

bool _isValidEmail(String email) {
  return RegExp(_emailValidationRegex).hasMatch(email);
}

bool _isValidPassword(String password) {
  return RegExp(_passwordValidationRegex).hasMatch(password);
}
