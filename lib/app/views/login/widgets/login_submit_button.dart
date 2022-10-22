import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/core/style.dart';
import '../bloc/login_bloc.dart';

class LoginSubmitButton extends StatelessWidget {
  const LoginSubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.watch<LoginBloc>();

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: () {
          loginBloc.add(EventLoginRegister());
        },
        icon: Image.asset(
          "assets/images/spotify.png",
          width: Style.XL,
        ),
        label: const Text('Login with Spotify'),
      ),
    );
  }
}
