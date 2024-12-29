import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_ui_model.freezed.dart';

@freezed
class RegisterUiModel with _$RegisterUiModel {
  const factory RegisterUiModel({
    required bool isLoading,
    required String email,
    required String password,
    required String userName,
    required bool shouldShowEmailError,
    required bool shouldShowPasswordError,
    required bool canRegister,
    required RegisterSnackBar? shownSnackBar,
    required void Function(String) onChangedEmail,
    required void Function() onUnfocusedEmail,
    required void Function(String) onChangedPassword,
    required void Function() onUnfocusedPassword,
    required void Function(String) onChangedUserName,
    required void Function() onClickedSignUp,
  }) = _RegisterUiModel;
}

enum RegisterSnackBar {
  alreadyUserExists,
  somethingHappened,
}
