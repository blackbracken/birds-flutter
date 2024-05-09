import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_birds/birds_theme.dart';
import 'package:flutter_birds/router/router.dart';
import 'package:flutter_gen/gen_l10n/app_l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const ProviderScope(child: BirdsApp()));
}

class BirdsApp extends ConsumerWidget {
  const BirdsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    const textTheme = TextTheme();

    return MaterialApp.router(
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: const BirdsTheme(textTheme).light(),
      darkTheme: const BirdsTheme(textTheme).dark(),
    );
  }
}
