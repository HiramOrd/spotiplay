import 'package:flutter/material.dart';
import 'package:spotiplay/app/helpers/image.dart';
import 'package:spotiplay/app/core/style.dart';

class CoverImage extends StatelessWidget {
  const CoverImage({
    Key? key,
    this.aspectRatio = 1 / 1,
    required this.image,
  }) : super(key: key);

  final String? image;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Style.RADIUS),
        ),
        child: Image(
          image: HelperImage.getNetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
