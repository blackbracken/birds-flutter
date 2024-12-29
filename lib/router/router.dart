import 'package:flutter_birds/features/post/post_screen.dart';
import 'package:flutter_birds/features/register/register_screen.dart';
import 'package:flutter_birds/features/timeline/timeline_screen.dart';
import 'package:flutter_birds/features/welcome/welcome_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum BirdsRoute {
  welcome(name: 'welcome', path: '/welcome'),
  register(name: 'register', path: '/register'),
  timeline(name: 'timeline', path: '/timeline'),
  post(name: 'post', path: '/post');

  const BirdsRoute({required this.name, required this.path});

  final String name;
  final String path;
}

final routerProvider = Provider((_) => GoRouter(
      debugLogDiagnostics: true,
      initialLocation: BirdsRoute.welcome.path,
      routes: [
        GoRoute(
            name: BirdsRoute.welcome.name,
            path: BirdsRoute.welcome.path,
            builder: (context, state) => const WelcomeScreen()),
        GoRoute(
            name: BirdsRoute.register.name,
            path: BirdsRoute.register.path,
            builder: (context, state) => const RegisterScreen()),
        GoRoute(
            name: BirdsRoute.timeline.name,
            path: BirdsRoute.timeline.path,
            builder: (context, state) => const TimelineScreen()),
        GoRoute(
            name: BirdsRoute.post.name,
            path: BirdsRoute.post.path,
            builder: (context, state) => const PostScreen()),
      ],
    ));

extension GoRouterExt on GoRouter {
  void pushRoute(BirdsRoute route) => pushNamed(route.name);

  // cf. https://stackoverflow.com/a/76947617
  void clearAndGo(BirdsRoute route) {
    while (canPop()) {
      pop();
    }

    pushReplacement(route.path);
  }
}
