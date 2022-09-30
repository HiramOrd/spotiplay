import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/use_cases/album/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

class InjectionUseCases extends StatelessWidget {
  const InjectionUseCases({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final repositoryLocal = context.read<RepositoryLocal>();
    final repositoryAuth = context.read<RepositoryAuth>();
    final repositoryMusic = context.read<RepositoryMusic>();

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => UcAlbumGetNewReleases(
            repositoryMusic,
          ),
        ),
        RepositoryProvider(
          create: (context) => UcAuthLogin(
            repositoryAuth,
            repositoryLocal,
          ),
        ),
        RepositoryProvider(
          create: (context) => UcAuthLogout(repositoryLocal),
        ),
        RepositoryProvider(
          create: (context) => UcAuthValidateToken(repositoryLocal),
        ),
      ],
      child: child,
    );
  }
}
