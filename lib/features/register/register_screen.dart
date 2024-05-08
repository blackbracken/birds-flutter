import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_app_bar_widget.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/components/birds_snack_bar_widget.dart';
import 'package:flutter_birds/components/birds_text_field.dart';
import 'package:flutter_birds/features/register/register_hook.dart';
import 'package:flutter_birds/hooks/use_l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = useRegisterUiModel(ref);
    final l10n = useL10n();

    useEffect(() {
      final snackBar = switch (uiModel.shownSnackBar) {
        RegisterSnackBar.FailureRegister => BirdsSnackBar("アカウントの作成に失敗しました"),
        null => null,
      };
      if (snackBar != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        });
      }
      return null;
    }, [uiModel.shownSnackBar]);

    return Scaffold(
        appBar: BirdsAppBar(
          title: l10n.register_app_bar_label,
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 32, right: 32),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Spacer(),
            Focus(
              child: BirdsTextField(
                autofocus: true,
                textInputAction: TextInputAction.next,
                hintText: l10n.register_email_hint,
                errorText: uiModel.shouldShowEmailError
                    ? l10n.register_email_invalid_error
                    : null,
                onChanged: uiModel.onChangedEmail,
              ),
              onFocusChange: (hasFocus) {
                if (!hasFocus) {
                  uiModel.onUnfocusedEmail();
                }
              },
            ),
            const SizedBox(height: 24),
            BirdsTextField(
              textInputAction: TextInputAction.next,
              hintText: l10n.register_password_hint,
              isPasswordField: true,
              onChanged: uiModel.onChangedPassword,
            ),
            const SizedBox(height: 24),
            BirdsTextField(
              textInputAction: TextInputAction.done,
              hintText: l10n.register_user_name_hint,
              onChanged: uiModel.onChangedUserName,
            ),
            Spacer(),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    constraints: BoxConstraints(minWidth: 120),
                    child: BirdsRoundedButton(
                      l10n.next_label,
                      BirdsRoundedButtonColor.primary,
                      uiModel.onClickedSignUp,
                    ))),
            const SizedBox(height: 40),
          ]),
        ));
  }
}
