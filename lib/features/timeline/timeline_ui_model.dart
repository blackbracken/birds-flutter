import 'package:freezed_annotation/freezed_annotation.dart';

part 'timeline_ui_model.freezed.dart';

@freezed
class TimelineUiModel with _$TimelineUiModel {
  const factory TimelineUiModel({
    required void Function() onClickedPost,
  }) = _TimelineUiModel;
}
