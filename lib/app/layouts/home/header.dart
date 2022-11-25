import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Style.BLACK,
      floating: true,
      centerTitle: false,
      title: Text(
        title,
        style: Style.TEXT_LG_WHITE_BOLD.copyWith(
          fontSize: 24,
          letterSpacing: -2,
        ),
      ),
      actions: [
        Row(
          children: const [
            Text(
              "with Spotify API",
              style: Style.TEXT_SM_WHITE,
            ),
            SizedBox(width: Style.PADDING),
            Image(
              image: AssetImage('assets/empty/placeholder.png'),
              fit: BoxFit.cover,
              height: 30,
            ),
            SizedBox(width: Style.PADDING),
          ],
        ),
      ],
    );
  }
}
