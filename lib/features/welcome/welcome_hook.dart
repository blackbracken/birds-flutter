import 'package:flutter_birds/domains/birds_user.dart';
import 'package:flutter_birds/features/welcome/welcome_ui_model.dart';
import 'package:flutter_birds/providers/notifier_provider.dart';
import 'package:flutter_birds/router/router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

WelcomeUiModel useWelcomeUiModel(WidgetRef ref) {
  final router = ref.watch(routerProvider);
  final user = ref.watch(userNotifierProvider);
  final userNotifier = ref.watch(userNotifierProvider.notifier);

  final isInitializing = useState(true);

  Future<void> onInitialized() async {
    await userNotifier.refreshUser();

    switch (user) {
      case AsyncLoading<BirdsUser?>():
        return;
      case AsyncData(value: final v) when v != null:
        await router.replaceRoute(BirdsRoute.timeline);
      case _:
        isInitializing.value = false;
    }
  }

  void onClickedRegister() {
    router.pushRoute(BirdsRoute.register);
  }

  return WelcomeUiModel(
    isInitializing: isInitializing.value,
    onInitialized: onInitialized,
    onClickedRegister: onClickedRegister,
  );
}
