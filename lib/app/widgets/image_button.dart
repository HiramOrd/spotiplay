import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final Widget image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
