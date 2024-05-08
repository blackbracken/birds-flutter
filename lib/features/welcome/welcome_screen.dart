import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/features/welcome/welcome_hook.dart';
import 'package:flutter_birds/hooks/use_l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import "../../gen/assets.gen.dart";

class WelcomeScreen extends HookConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final uiModel = useWelcomeUiModel(ref);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 32, left: 32),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                l10n.app_name_upper_case,
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
                      text: l10n.welcome_register_button_label,
                      color: BirdsRoundedButtonColor.primary,
                      onPressed: uiModel.goRegister)),
              const SizedBox(height: 24),
              SizedBox(
                  width: double.infinity,
                  child: BirdsRoundedButton(
                      text: l10n.welcome_log_in_button_label,
                      color: BirdsRoundedButtonColor.secondary,
                      onPressed: () => null)),
              const SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
