import 'package:flutter/material.dart';
import '../views/index.dart';

class RoutesAuth {
  static const String splash = 'splash';
  static Route splashView(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, _, __) => const SplashListener(),
    );
  }

  static const String login = 'login';
  static Route loginView(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      pageBuilder: (context, _, __) => const LoginListener(),
    );
  }
}
