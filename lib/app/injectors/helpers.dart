import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/loading.dart';

class InjectiorHelpers extends StatelessWidget {
  const InjectiorHelpers({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => HelperLoading(),
        ),
      ],
      child: child,
    );
  }
}
