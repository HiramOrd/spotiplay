import 'package:flutter/material.dart';

class AspectRatioBuilder extends StatelessWidget {
  const AspectRatioBuilder({
    super.key,
    required this.builder,
    required this.aspectRatio,
    required this.width,
  });

  final double aspectRatio;
  final double width;
  final Widget Function(
    double aspectRatio,
    double width,
    double height,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final height = width / aspectRatio;
    return builder(aspectRatio, width, height);
  }
}
