import 'package:flutter/material.dart';

class BirdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BirdsAppBar({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: colorScheme.primary,
      iconTheme: IconThemeData(
        color: colorScheme.onPrimary,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56.0);
}
