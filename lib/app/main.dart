import 'package:flutter/material.dart';
import 'injectors/_injector.dart';
import 'material.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Injector(
      child: AppMaterial(),
    );
  }
}
