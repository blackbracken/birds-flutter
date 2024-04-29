import 'package:flutter/material.dart';

enum BirdsRoundedButtonColor {
  primary,
  secondary,
}

class BirdsRoundedButton extends StatelessWidget {
  BirdsRoundedButton(this.text, this.color, this.onPressed);

  final String text;
  final BirdsRoundedButtonColor color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(minHeight: 48),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: switch (color) {
              BirdsRoundedButtonColor.primary =>
                Theme.of(context).colorScheme.primary,
              BirdsRoundedButtonColor.secondary =>
                Theme.of(context).colorScheme.secondary,
            },
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          onPressed: onPressed,
          child: Text(text),
        ));
  }
}
