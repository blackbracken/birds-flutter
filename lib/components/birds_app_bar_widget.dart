import 'package:flutter/material.dart';
import 'package:flutter_birds/hooks/use_theme.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BirdsAppBar extends HookWidget implements PreferredSizeWidget {
  const BirdsAppBar({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = useTheme();

    return AppBar(
      backgroundColor: theme.colorScheme.primary,
      iconTheme: IconThemeData(
        color: theme.colorScheme.onPrimary,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: theme.colorScheme.onPrimary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
