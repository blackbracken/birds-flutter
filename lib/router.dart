import 'package:flutter_birds/feature/welcome/welcome_screen.dart';
import 'package:go_router/go_router.dart';

const String welcomeRoute = "welcome";

final router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/welcome',
  routes: [
    GoRoute(
        name: welcomeRoute,
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen()),
  ],
);
