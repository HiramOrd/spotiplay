import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';

import 'header.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Style.PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: title),
          child,
        ],
      ),
    );
  }
}
