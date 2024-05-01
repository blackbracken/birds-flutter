import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/features/welcome/welcome_hook.dart';
import 'package:flutter_gen/gen_l10n/app_l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import "../../gen/assets.gen.dart";

class WelcomeScreen extends HookConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = useWelcomeUiModel(ref);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 32, left: 32),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                L10n.of(context)!.app_name_upper_case,
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
                      L10n.of(context)!.welcome_register_button_label,
                      BirdsRoundedButtonColor.primary,
                      uiModel.goRegister)),
              const SizedBox(height: 24),
              SizedBox(
                  width: double.infinity,
                  child: BirdsRoundedButton(
                      L10n.of(context)!.welcome_log_in_button_label,
                      BirdsRoundedButtonColor.secondary,
                      () => null)),
              const SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
