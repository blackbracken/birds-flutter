import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_app_bar_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: BirdsAppBar(
        title: "test",
      ),
    );
  }
}
