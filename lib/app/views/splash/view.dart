import 'package:flutter/material.dart';
import 'package:spotiplay/core/style.dart';
import 'package:spotiplay/app/widgets/logo.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Style.BLACK,
      body: Center(
        child: Logo(),
      ),
    );
  }
}
