import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_ui_state.freezed.dart';

@freezed
class RegisterUiState with _$RegisterUiState {
  const factory RegisterUiState({
    required String email,
    required String password,
    required String userName,
  }) = _RegisterUiState;
}
