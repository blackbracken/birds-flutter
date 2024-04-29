import 'package:flutter/material.dart';

class BirdsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BirdsAppBar({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56.0);
}
