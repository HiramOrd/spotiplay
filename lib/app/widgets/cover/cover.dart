import 'package:flutter/material.dart';
import 'package:spotiplay/app/widgets/image_button.dart';
import 'package:spotiplay/app/core/style.dart';

class Cover extends StatelessWidget {
  const Cover({
    super.key,
    required this.image,
    required this.title,
    required this.width,
    required this.onTap,
    this.labelHeight = 80,
    this.subtitle,
  });

  final double width;
  final double labelHeight;
  final String title;
  final String? subtitle;
  final Widget image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageButton(
            image: image,
            onTap: onTap,
          ),
          const SizedBox(height: Style.PADDING),
          Text(
            title,
            style: Style.TEXT_MD_WHITE_BOLD,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          if (subtitle?.isNotEmpty == true)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: Style.PADDING),
                Text(
                  subtitle!,
                  style: TextStyle(
                    color: Style.WHITE.withOpacity(0.7),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            )
        ],
      ),
    );
  }
}
