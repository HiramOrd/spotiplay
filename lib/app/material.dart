import 'package:flutter/material.dart';
import 'package:spotiplay/app/routes/index.dart';
import 'package:spotiplay/core/style.dart';

class AppMaterial extends StatelessWidget {
  const AppMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Style.APP_NAME,
      onGenerateRoute: RouterApp.onGenerateRoutes,
      initialRoute: RouterApp.initialRoute,
      theme: Style.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
