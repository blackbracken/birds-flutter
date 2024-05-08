import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_birds/util/scope_function.dart';

class WithLoading extends StatelessWidget {
  WithLoading({required this.isLoading, required this.child});

  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: CircularProgressIndicator(),
        ).takeIf((_) => isLoading),
        child,
      ].whereNotNull().toList(),
    );
  }
}
