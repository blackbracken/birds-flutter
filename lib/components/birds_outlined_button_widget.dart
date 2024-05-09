import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_birds/hooks/use_theme.dart';
import 'package:flutter_birds/util/ext/color_ext.dart';
import 'package:flutter_birds/util/scope_function.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum BirdsRoundedButtonColor {
  primary,
  secondary,
}

class BirdsRoundedButton extends HookWidget {
  const BirdsRoundedButton({
    super.key,
    required this.text,
    required this.color,
    this.isEnabled = true,
    this.onPressed,
  });

  final String text;
  final BirdsRoundedButtonColor color;
  final bool isEnabled;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();

    return Container(
        constraints: const BoxConstraints(minHeight: 48),
        child: AbsorbPointer(
            absorbing: !isEnabled,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: switch (color) {
                  BirdsRoundedButtonColor.primary => theme.colorScheme.primary,
                  BirdsRoundedButtonColor.secondary =>
                    theme.colorScheme.secondary,
                }
                    .let((color) => isEnabled ? color : color.disabled()),
                foregroundColor: theme.colorScheme.onPrimary,
                elevation: 0,
              ),
              onPressed: () {
                HapticFeedback.mediumImpact();
                onPressed?.call();
              },
              child: Text(text),
            )));
  }
}
