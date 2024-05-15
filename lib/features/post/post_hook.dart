import 'dart:io';
import 'dart:math';

import 'package:flutter_birds/features/post/post_ui_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../router/router.dart';

const int postTextLimit = 140;

PostUiModel usePostUiModel(WidgetRef ref) {
  final router = ref.watch(routerProvider);

  final isLoading = useState(false);
  final canPost = useState(false);
  final bodyText = useState('');

  void onChangedBodyText(String text) {
    bodyText.value = text;

    final runesCount = text.runes.length;
    canPost.value = 0 < runesCount && runesCount <= postTextLimit;
  }

  void onClickedClose() {
    router.pop();
  }

  void onClickedPost() {
    isLoading.value = true;
    sleep(const Duration(seconds: 3));
    isLoading.value = false;
  }

  final bodyTextLimitFillingFactor =
      bodyText.value.runes.length.toDouble() / postTextLimit;

  return PostUiModel(
    isLoading: isLoading.value,
    canPost: canPost.value,
    gaugeWidthFraction: min(bodyTextLimitFillingFactor, 1),
    isGaugeOverflowed: bodyTextLimitFillingFactor > 1,
    bodyText: bodyText.value,
    onClickedClose: onClickedClose,
    onClickedPost: onClickedPost,
    onChangedBodyText: onChangedBodyText,
  );
}
