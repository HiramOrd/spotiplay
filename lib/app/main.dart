import 'package:flutter/material.dart';
import 'injectors/index.dart';
import 'material.dart';

class AppMain extends StatelessWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InjectiorHelpers(
      child: InjectiorRepository(
        child: InjectiorBlocs(
          child: AppMaterial(),
        ),
      ),
    );
  }
}
