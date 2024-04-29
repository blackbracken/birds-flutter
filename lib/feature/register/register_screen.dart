import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_app_bar_widget.dart';
import 'package:flutter_gen/gen_l10n/app_l10n.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: BirdsAppBar(
          title: L10n.of(context)!.register_app_bar_label,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(mainAxisSize: MainAxisSize.max, children: []),
        ));
  }
}
