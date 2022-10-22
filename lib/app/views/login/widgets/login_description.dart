import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';
import 'package:spotiplay/app/widgets/logo.dart';

class LoginDescription extends StatelessWidget {
  const LoginDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        const Logo(),
        const SizedBox(height: Style.PADDING),

        // Description
        Text(
          'El objetivo de esta aplicación es consumir informacion de la API de Spotify usando Flutter 3 e implementando "Clean Architecture" y el patrón "BLOC".',
          style: Style.TEXT_MD_GREY600_500.copyWith(
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
