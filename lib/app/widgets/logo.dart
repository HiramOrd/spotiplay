import 'package:flutter/material.dart';
import 'package:spotiplay/core/style.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(children: [
        TextSpan(
          text: "SpotiPlay",
          style: Style.TEXT_H1_WHITE_BOLD,
        ),
        TextSpan(
          text: ".",
          style: Style.TEXT_H1_PRIMARY_BOLD,
        ),
      ]),
    );
  }
}
