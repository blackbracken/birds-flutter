import 'package:flutter_birds/features/register/register_screen.dart';
import 'package:flutter_birds/features/timeline/timeline_screen.dart';
import 'package:flutter_birds/features/welcome/welcome_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum BirdsRoute {
  Welcome(name: 'welcome', path: '/welcome'),
  Register(name: 'register', path: '/register'),
  Timeline(name: 'timeline', path: '/timeline');

  const BirdsRoute({required this.name, required this.path});

  final String name;
  final String path;
}

final routerProvider = Provider((_) => GoRouter(
      debugLogDiagnostics: true,
      initialLocation: BirdsRoute.Welcome.path,
      routes: [
        GoRoute(
            name: BirdsRoute.Welcome.name,
            path: BirdsRoute.Welcome.path,
            builder: (context, state) => const WelcomeScreen()),
        GoRoute(
            name: BirdsRoute.Register.name,
            path: BirdsRoute.Register.path,
            builder: (context, state) => RegisterScreen()),
        GoRoute(
            name: BirdsRoute.Timeline.name,
            path: BirdsRoute.Timeline.path,
            builder: (context, state) => TimelineScreen()),
      ],
    ));

extension GoRouterExt on GoRouter {
  void pushRoute(BirdsRoute route) => pushNamed(route.name);

  // cf. https://stackoverflow.com/a/76947617
  void clearAndGo(BirdsRoute route) {
    while (canPop()) pop();

    pushReplacement(route.path);
  }
}
