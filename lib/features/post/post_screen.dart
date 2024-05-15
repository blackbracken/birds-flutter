import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/hooks/use_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostScreen extends HookConsumerWidget {
  const PostScreen({super.key});

  static const int _textLimit = 140;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();

    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      const SizedBox(height: 16),
      const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.close),
                onPressed: null,
              ),
              Spacer(),
              BirdsRoundedButton(
                text: '投稿',
                color: BirdsRoundedButtonColor.primary,
              )
            ],
          )),
      const SizedBox(height: 16),
      SizedBox(
          height: 4,
          child: Align(
              alignment: Alignment.centerLeft,
              child: AnimatedFractionallySizedBox(
                  widthFactor: 11.0 / _textLimit,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    color: theme.colorScheme.primary,
                  )))),
      const SizedBox(height: 16),
      const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: TextField(
            autofocus: true,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              hintText: '今何してる?',
              border: InputBorder.none,
            ),
            style: TextStyle(
              fontSize: 22,
            ),
          )),
    ])));
  }
}
