import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Style.PADDING),
      child: Text(
        title,
        style: Style.TEXT_XL_WHITE_BOLD.copyWith(
          wordSpacing: -2,
        ),
      ),
    );
  }
}
