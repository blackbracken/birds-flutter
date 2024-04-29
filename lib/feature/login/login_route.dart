import 'package:flutter/material.dart';
import 'package:flutter_birds/feature/login/login_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../designsystem/birds_app_bar_widget.dart';

class LoginRoute extends HookConsumerWidget {
  const LoginRoute({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = useLoginUiModel();

    return Scaffold(
      appBar: BirdsAppBar(title: "ログイン"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'UserName',
            ),
            onChanged: uiModel.changeUserName,
          )
        ],
      ),
    );
  }
}
