import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';

class LoginFormContainer extends StatelessWidget {
  const LoginFormContainer({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 0,
      width: size.width,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Style.PADDING),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
