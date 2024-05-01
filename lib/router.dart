import 'package:flutter_birds/features/register/register_screen.dart';
import 'package:flutter_birds/features/welcome/welcome_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

const String welcomeRoute = "welcome";
const String registerRoute = "register";

final routerProvider = Provider((_) => GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/welcome',
      routes: [
        GoRoute(
            name: welcomeRoute,
            path: '/welcome',
            builder: (context, state) => const WelcomeScreen()),
        GoRoute(
            name: registerRoute,
            path: '/register',
            builder: (context, state) => RegisterScreen()),
      ],
    ));
