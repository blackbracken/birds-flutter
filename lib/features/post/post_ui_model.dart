import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_ui_model.freezed.dart';

@freezed
class PostUiModel with _$PostUiModel {
  const factory PostUiModel({
    required bool isLoading,
    required bool canPost,
    required double gaugeWidthFraction,
    required bool isGaugeOverflowed,
    required String bodyText,
    required void Function() onClickedClose,
    required void Function() onClickedPost,
    required void Function(String) onChangedBodyText,
  }) = _PostUiModel;
}
