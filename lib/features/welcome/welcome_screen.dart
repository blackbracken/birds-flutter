import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/features/welcome/welcome_hook.dart';
import 'package:flutter_birds/hooks/use_l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';

class WelcomeScreen extends HookConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = useL10n();
    final uiModel = useWelcomeUiModel(ref);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        uiModel.onInitialized();
      });
      return null;
    });

    if (uiModel.isInitializing) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 32, left: 32),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                l10n.app_name_upper_case,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              const SizedBox(height: 32),
              DecoratedBox(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x54000000),
                        blurRadius: 8,
                      ),
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Assets.images.welcomeEyeCatching.image(),
                ),
              ),
              const Spacer(),
              SizedBox(
                  width: double.infinity,
                  child: BirdsRoundedButton(
                      text: l10n.welcome_register_button_label,
                      color: BirdsRoundedButtonColor.primary,
                      onPressed: uiModel.onClickedRegister)),
              const SizedBox(height: 24),
              SizedBox(
                  width: double.infinity,
                  child: BirdsRoundedButton(
                      text: l10n.welcome_log_in_button_label,
                      color: BirdsRoundedButtonColor.secondary,
                      onPressed: () {})),
              const SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
