import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/views/index.dart';
import 'package:spotiplay/use_cases/album/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

class InjectionBlocs extends StatelessWidget {
  const InjectionBlocs({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final uCGetNewReleases = context.read<UcAlbumGetNewReleases>();
    final uCLogin = context.read<UcAuthLogin>();
    final uCLogout = context.read<UcAuthLogout>();
    final uCValidateToken = context.read<UcAuthValidateToken>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashBloc(
            ucValidateToken: uCValidateToken,
          ),
        ),
        BlocProvider(
          create: (context) => LoginBloc(
            ucLogin: uCLogin,
          ),
        ),
        BlocProvider(
          create: (context) => HomeBloc(
            ucLogout: uCLogout,
            ucGetNewReleases: uCGetNewReleases,
          ),
        ),
      ],
      child: child,
    );
  }
}
