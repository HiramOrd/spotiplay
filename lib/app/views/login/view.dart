import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';
import 'widgets/index.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Style.BLACK,
        child: Stack(
          fit: StackFit.expand,
          children: const [
            LoginVideo(),
            LoginFormContainer(
              children: [
                LoginDescription(),
                SizedBox(height: Style.H1),
                LoginSubmitButton(),
                SizedBox(height: Style.H1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
