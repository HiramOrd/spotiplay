import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/view_info.dart';
import 'package:spotiplay/app/routes/index.dart';
import 'bloc/login_bloc.dart';
import 'view.dart';

class LoginListener extends StatefulWidget {
  const LoginListener({Key? key}) : super(key: key);

  @override
  State<LoginListener> createState() => _LoginListenerState();
}

class _LoginListenerState extends State<LoginListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      child: const LoginView(),
      listener: (context, state) {
        HelperViewInfo.showLoadingOrError(
          context,
          loading: state.status == LoginStatus.loading,
          infoData: state.info,
        );

        switch (state.status) {
          case LoginStatus.authenticated:
            Navigator.of(context).pushReplacementNamed(RoutesApp.home);
            break;

          default:
            break;
        }
      },
    );
  }
}
