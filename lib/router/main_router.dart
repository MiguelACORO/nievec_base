import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:nievec_base/ui/screens/home_screen.dart';
import 'package:nievec_base/ui/screens/login/login_screen.dart';

class MainRouter {
  static final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
    ],
  );

  static GoRouter get router => _router;
}