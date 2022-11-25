import 'package:flutter/material.dart';
import 'package:spotiplay/app/views/_main/view.dart';

class RoutesApp {
  static const String home = 'home';
  static Route homeView(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      pageBuilder: (context, _, __) => const MainView(),
    );
  }
}
