import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_state.freezed.dart';

@freezed
class LoginUiState with _$LoginUiState {
  const factory LoginUiState({
    required String userName,
    required String password,
  }) = _LoginUiState;
}
