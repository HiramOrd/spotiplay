import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/view_info.dart';
import 'package:spotiplay/app/routes/index.dart';
import 'bloc/splash_bloc.dart';
import 'view.dart';

class SplashListener extends StatefulWidget {
  const SplashListener({Key? key}) : super(key: key);

  @override
  State<SplashListener> createState() => _SplashListenerState();
}

class _SplashListenerState extends State<SplashListener> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        final splashBloc = context.read<SplashBloc>();
        splashBloc.add(EventSplashValidateToken());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      child: const SplashView(),
      listener: (context, state) {
        HelperViewInfo.showLoadingOrError(
          context,
          loading: state.status == SplashStatus.loading,
          infoData: state.info,
        );

        switch (state.status) {
          case SplashStatus.authenticated:
            Navigator.of(context).pushReplacementNamed(RoutesApp.home);
            break;

          default:
            Navigator.of(context).pushReplacementNamed(RoutesAuth.login);
            break;
        }
      },
    );
  }
}
