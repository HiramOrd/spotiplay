import 'package:flutter/material.dart';
import 'index.dart';

class Injector extends StatelessWidget {
  const Injector({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InjectionRepository(
      child: InjectionUseCases(
        child: InjectionBlocs(
          child: child,
        ),
      ),
    );
  }
}
