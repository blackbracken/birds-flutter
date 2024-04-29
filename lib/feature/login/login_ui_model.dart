import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_ui_model.freezed.dart';

@freezed
class LoginUiModel with _$LoginUiModel {
  const factory LoginUiModel({
    required String userName,
    required String password,
  }) = _LoginUiModel;
}
