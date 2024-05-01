import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_ui_state.freezed.dart';

@freezed
class RegisterUiState with $_RegisterUiState {
  const factory RegisterUiState({
    required String mailAddress,
    required String password,
    required String userName,
  }) = _RegisterUiState;
}
