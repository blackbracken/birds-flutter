import 'package:flutter/material.dart';
import 'package:flutter_birds/components/birds_app_bar_widget.dart';
import 'package:flutter_birds/components/birds_outlined_button_widget.dart';
import 'package:flutter_birds/components/birds_snack_bar_widget.dart';
import 'package:flutter_birds/components/birds_text_field.dart';
import 'package:flutter_birds/features/register/register_hook.dart';
import 'package:flutter_birds/features/register/register_ui_model.dart';
import 'package:flutter_birds/hooks/use_l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/with_loading.dart';

class RegisterScreen extends HookConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiModel = useRegisterUiModel(ref);
    final l10n = useL10n();

    useEffect(() {
      final snackBarText = switch (uiModel.shownSnackBar) {
        RegisterSnackBar.alreadyUserExists =>
          l10n.register_already_registered_email_error,
        RegisterSnackBar.somethingHappened =>
          l10n.register_something_happened_error,
        null => null,
      };
      if (snackBarText != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ScaffoldMessenger.of(context)
              .showSnackBar(BirdsSnackBar(snackBarText));
        });
      }
      return null;
    }, [uiModel.shownSnackBar]);

    return Scaffold(
        appBar: BirdsAppBar(
          title: l10n.register_app_bar_label,
        ),
        body: WithLoading(
            isLoading: uiModel.isLoading,
            child: Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Focus(
                      child: BirdsTextField(
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                        hintText: l10n.register_email_hint,
                        errorText: uiModel.shouldShowEmailError
                            ? l10n.register_email_invalid_error
                            : null,
                        readOnly: uiModel.isLoading,
                        onChanged: uiModel.onChangedEmail,
                      ),
                      onFocusChange: (hasFocus) {
                        if (!hasFocus) uiModel.onUnfocusedEmail();
                      },
                    ),
                    const SizedBox(height: 24),
                    Focus(
                      child: BirdsTextField(
                        textInputAction: TextInputAction.next,
                        hintText: l10n.register_password_hint,
                        errorText: uiModel.shouldShowPasswordError
                            ? l10n.register_password_invalid_error
                            : null,
                        readOnly: uiModel.isLoading,
                        isPasswordField: true,
                        onChanged: uiModel.onChangedPassword,
                      ),
                      onFocusChange: (hasFocus) {
                        if (!hasFocus) uiModel.onUnfocusedPassword();
                      },
                    ),
                    const SizedBox(height: 24),
                    BirdsTextField(
                      textInputAction: TextInputAction.next,
                      hintText: l10n.register_user_name_hint,
                      readOnly: uiModel.isLoading,
                      onChanged: uiModel.onChangedUserName,
                    ),
                    const Spacer(),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            constraints: const BoxConstraints(minWidth: 120),
                            child: BirdsRoundedButton(
                              text: l10n.next_label,
                              color: BirdsRoundedButtonColor.primary,
                              isEnabled: uiModel.canRegister,
                              onPressed: uiModel.onClickedSignUp,
                            ))),
                    const SizedBox(height: 40),
                  ]),
            )));
  }
}
