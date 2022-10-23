import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/views/index.dart';
import 'package:spotiplay/models/repository/index.dart';

class InjectiorBlocs extends StatelessWidget {
  const InjectiorBlocs({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashBloc(
            repoLocal: context.read<RepositoryLocal>(),
          ),
        ),
        BlocProvider(
          create: (context) => LoginBloc(
            repoAuth: context.read<RepositoryAuth>(),
            repoLocal: context.read<RepositoryLocal>(),
          ),
        ),
        BlocProvider(
          create: (context) => HomeBloc(
            repoArtist: context.read<RepositoryArtist>(),
            repoLocal: context.read<RepositoryLocal>(),
            repoMusic: context.read<RepositoryMusic>(),
          ),
        ),
      ],
      child: child,
    );
  }
}
