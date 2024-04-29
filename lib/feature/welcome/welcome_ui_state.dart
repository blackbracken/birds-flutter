import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_ui_state.freezed.dart';

@freezed
class WelcomeUiState with _$WelcomeUiState {
  const factory WelcomeUiState({
    required String userName,
    required String password,
  }) = _WelcomeUiState;
}
