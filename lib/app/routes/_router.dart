import 'package:flutter/material.dart';

import 'index.dart';

class RouterApp {
  static const initialRoute = RoutesAuth.splash;
  // static const initialRoute = RoutesApp.options;

  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesApp.home:
        return RoutesApp.homeView(settings);
      case RoutesAuth.splash:
        return RoutesAuth.splashView(settings);

      default:
        return RoutesAuth.loginView(settings);
    }
  }
}
