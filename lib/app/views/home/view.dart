import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/core/style.dart';

import 'bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    final albumList = state.albumList;

    print(albumList?.toMap());

    return Scaffold(
      backgroundColor: Style.BLACK,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final homeBloc = context.read<HomeBloc>();
            homeBloc.add(EventHomeLogout());
          },
          child: const Text('Logout'),
        ),
      ),
    );
  }
}
