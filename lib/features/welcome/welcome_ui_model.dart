import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_ui_model.freezed.dart';

@freezed
class WelcomeUiModel with _$WelcomeUiModel {
  const factory WelcomeUiModel({
    required bool isInitializing,
    required Future<void> Function() onInitialized,
    required void Function() onClickedRegister,
  }) = _WelcomeUiModel;
}
