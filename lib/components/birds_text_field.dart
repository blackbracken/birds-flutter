import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BirdsTextField extends HookConsumerWidget {
  const BirdsTextField({
    this.labelText,
    this.hintText,
    this.autofocus = false,
    this.textInputAction,
    this.errorText,
    this.readOnly = false,
    this.isPasswordField = false,
    this.onChanged,
    this.onEditingComplete,
    super.key,
  });

  final String? labelText;
  final String? hintText;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final String? errorText;
  final bool readOnly;
  final bool isPasswordField;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showPassword = useState(false);

    return TextField(
      autofocus: autofocus,
      textInputAction: textInputAction,
      obscureText: isPasswordField && !showPassword.value,
      readOnly: readOnly,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
        errorText: errorText,
        suffixIcon: switch (showPassword.value) {
          true when isPasswordField => IconButton(
              icon: const Icon(Icons.visibility),
              onPressed: () => showPassword.value = false,
            ),
          false when isPasswordField => IconButton(
              icon: const Icon(Icons.visibility_off),
              onPressed: () => showPassword.value = true,
            ),
          _ => null,
        },
      ),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
    );
  }
}
