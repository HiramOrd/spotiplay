import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/loading.dart';
import 'package:spotiplay/app/helpers/view_info.dart';
import 'package:spotiplay/app/routes/index.dart';
import 'bloc/home_bloc.dart';
import 'view.dart';

class HomeListener extends StatefulWidget {
  const HomeListener({Key? key}) : super(key: key);

  @override
  State<HomeListener> createState() => _HomeListenerState();
}

class _HomeListenerState extends State<HomeListener> {
  @override
  void initState() {
    super.initState();

    final homeBloc = context.read<HomeBloc>();
    homeBloc.add(EventHomeInit());
  }

  @override
  void dispose() {
    HelperLoading().hide();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      child: const HomeView(),
      listener: (context, state) {
        HelperViewInfo.showLoadingOrError(
          context,
          loading: state.status == HomeStatus.loading,
          infoData: state.info,
        );

        switch (state.status) {
          case HomeStatus.logout:
            Navigator.of(context).pushNamedAndRemoveUntil(
              RoutesAuth.login,
              (route) => false,
            );
            break;

          default:
            break;
        }
      },
    );
  }
}
