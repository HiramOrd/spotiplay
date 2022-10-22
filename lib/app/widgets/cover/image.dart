import 'package:flutter/material.dart';
import 'package:spotiplay/app/helpers/image.dart';
import 'package:spotiplay/core/style.dart';

class CoverImageBase extends StatelessWidget {
  const CoverImageBase({super.key});

  @override
  Widget build(BuildContext context) => Container();
}

class CoverImage extends StatelessWidget implements CoverImageBase {
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
