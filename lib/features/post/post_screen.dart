import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/features/post/post_hook.dart';
import 'package:flutter_birds/hooks/use_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostScreen extends HookConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();
    final uiModel = usePostUiModel(ref);

    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      const SizedBox(height: 16),
      Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: uiModel.onClickedClose,
              ),
              const Spacer(),
              BirdsRoundedButton(
                text: '投稿',
                color: BirdsRoundedButtonColor.primary,
                isEnabled: uiModel.canPost,
                onPressed: uiModel.onClickedPost,
              )
            ],
          )),
      const SizedBox(height: 16),
      SizedBox(
          height: 4,
          child: Align(
              alignment: Alignment.centerLeft,
              child: AnimatedFractionallySizedBox(
                  widthFactor: uiModel.gaugeWidthFraction,
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    color: uiModel.isGaugeOverflowed
                        ? theme.colorScheme.error
                        : theme.colorScheme.primary,
                  )))),
      const SizedBox(height: 16),
      Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
              hintText: '今何してる?',
              border: InputBorder.none,
            ),
            style: const TextStyle(
              fontSize: 22,
            ),
            onChanged: uiModel.onChangedBodyText,
          )),
    ])));
  }
}
