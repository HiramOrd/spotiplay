import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/core/environment.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/repository/index.dart';

class InjectionRepository extends StatelessWidget {
  const InjectionRepository({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    List<RepositoryProvider> providers = [];

    switch (Environment().config.type) {
      case ENV_MODE.PROD:
        providers = getProvidersProductive(context);
        break;
      default:
        providers = getProvidersProductive(context);
        break;
    }

    return MultiRepositoryProvider(
      providers: providers,
      child: child,
    );
  }

  static List<RepositoryProvider> getProvidersProductive(BuildContext context) {
    return [
      RepositoryProvider<RepositoryAuth>(
        create: (context) => RepositoryAuthImpl(),
      ),
      RepositoryProvider<RepositoryLocal>(
        create: (context) => RepositoryLocalImpl(),
      ),
      RepositoryProvider<RepositoryMusic>(
        create: (context) => RepositoryMusicImpl(),
      ),
    ];
  }
}
