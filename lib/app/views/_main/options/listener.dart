import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/view_info.dart';
import 'package:spotiplay/app/routes/index.dart';
import 'bloc/options_bloc.dart';
import 'view.dart';

class OptionsListener extends StatefulWidget {
  const OptionsListener({Key? key}) : super(key: key);

  @override
  State<OptionsListener> createState() => _OptionsListenerState();
}

class _OptionsListenerState extends State<OptionsListener> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<OptionsBloc, OptionsState>(
      child: const OptionsView(),
      listener: (context, state) {
        HelperViewInfo.showLoadingOrError(
          context,
          loading: state.status == OptionsStatus.loading,
          infoData: state.info,
        );

        switch (state.status) {
          case OptionsStatus.authenticated:
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
