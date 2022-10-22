import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/style.dart';

class Carousel extends StatefulWidget {
  const Carousel({
    Key? key,
    required this.items,
    required this.builder,
    required this.itemsCount,
    required this.onEnd,
  }) : super(key: key);

  final List items;
  final int itemsCount;
  final Function onEnd;

  final Widget Function(
    BuildContext context,
    int index,
  ) builder;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final scrollController = ScrollController();
  double scrollSize = 0.0;

  void updateContent() {
    final end = scrollController.position.maxScrollExtent;
    final current = scrollController.position.pixels;

    if (end - current < 400 && scrollSize < end) {
      widget.onEnd();
      scrollSize = end;
    }
  }

  @override
  void initState() {
    scrollController.addListener(updateContent);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(updateContent);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: scrollController,
      scrollDirection: Axis.horizontal,
      itemCount: widget.itemsCount,
      padding: const EdgeInsets.symmetric(horizontal: Style.PADDING),
      separatorBuilder: (context, index) {
        return const SizedBox(width: Style.PADDING);
      },
      itemBuilder: (context, index) => widget.builder(context, index),
    );
  }
}
