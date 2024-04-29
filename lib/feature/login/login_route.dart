import 'package:flutter/material.dart';
import 'package:flutter_birds/designsystem/birds_outlined_button_widget.dart';
import 'package:flutter_birds/feature/login/login_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import "../../gen/assets.gen.dart";

class LoginRoute extends HookConsumerWidget {
  const LoginRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = useLoginUiModel();

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 32, left: 32),
        child: Column(
          children: [
            const SizedBox(height: 72),
            const Text(
              "BIRDS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            const SizedBox(height: 32),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Assets.images.welcomeEyeCatching.image(),
            ),
            Spacer(),
            SizedBox(
                width: double.infinity,
                child: BirdsRoundedButton(
                    "新規登録", BirdsRoundedButtonColor.primary, () => null)),
            const SizedBox(height: 24),
            SizedBox(
                width: double.infinity,
                child: BirdsRoundedButton(
                    "ログイン", BirdsRoundedButtonColor.secondary, () => null)),
            const SizedBox(height: 56),
          ],
        ),
      ),
    );
  }
}
