import 'package:flutter/material.dart';

class AnimationFadeTraslate extends AnimatedWidget {
  AnimationFadeTraslate({
    super.key,
    required AnimationController controller,
    required this.child,
    bool initialAnimation = true,
    Duration initialAnimationTimeOut = const Duration(milliseconds: 0),
    this.widthTransition = 50,
  }) : super(listenable: controller) {
    if (initialAnimation) {
      Future.delayed(initialAnimationTimeOut).then((_) {
        controller.forward();
      });
    } else {
      controller.value = 1;
    }
  }

  final Widget child;
  final double widthTransition;
  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    final curve = CurveTween(curve: Curves.ease);
    final animation = _progress.drive(curve).value;

    return FadeTransition(
      opacity: _progress,
      child: Transform.translate(
        offset: Offset(-widthTransition + (widthTransition * animation), 0),
        child: child,
      ),
    );
  }
}
