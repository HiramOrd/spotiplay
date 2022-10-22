import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BottomMenuHideable extends StatefulWidget {
  BottomMenuHideable({
    Key? key,
    required this.bottomNavigationBar,
    required this.duration,
  }) : super(key: key) {
    visible.value = true;
    controller.addListener(
      () {
        if (controller.position.userScrollDirection ==
            ScrollDirection.reverse) {
          if (visible.value) {
            visible.value = false;
          }
        }

        if (controller.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (!visible.value) {
            visible.value = true;
          }
        }
      },
    );
  }

  final ScrollController controller = ScrollController();
  final ValueNotifier<bool> visible = ValueNotifier<bool>(true);
  final BottomNavigationBar bottomNavigationBar;
  final Duration duration;

  @override
  State<BottomMenuHideable> createState() => _BottomMenuHideableState();
}

class _BottomMenuHideableState extends State<BottomMenuHideable> {
  @override
  void dispose() {
    widget.controller.dispose();
    widget.visible.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return ValueListenableBuilder(
      valueListenable: widget.visible,
      builder: (context, bool value, child) => AnimatedContainer(
        duration: widget.duration,
        height: value ? kBottomNavigationBarHeight + bottomPadding : 0.0,
        child: Wrap(
          children: [widget.bottomNavigationBar],
        ),
      ),
    );
  }
}
