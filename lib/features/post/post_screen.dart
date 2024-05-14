import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/hooks/use_theme.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostScreen extends HookConsumerWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = useTheme();

    return const Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(children: [
                  SizedBox(height: 16),
                  Row(
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
                  ),
                  SizedBox(height: 16),
                  // show limit counter
                  SizedBox(height: 16),
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: '今何してる?',
                      border: InputBorder.none,
                    ),
                  ),
                ]))));
  }
}
