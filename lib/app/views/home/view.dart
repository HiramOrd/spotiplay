import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/layouts/home.dart';
import 'package:spotiplay/app/widgets/animation/fade_traslate.dart';
import 'package:spotiplay/app/widgets/section/section.dart';
import 'bloc/home_bloc.dart';
import 'widgets/index.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final AnimationController _savedAlbumsAnimCtr = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  );

  late final AnimationController _newReleasesAnimCtr = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  );

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;

    return HomeLayout(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (state.savedAlbums?.items?.isNotEmpty == true)
            AnimationFadeTraslate(
              controller: _savedAlbumsAnimCtr,
              initialAnimation: true,
              child: const Section(
                title: "Saved Albums",
                child: CarouselSavedAlbums(),
              ),
            ),
          if (state.newReleases?.items?.isNotEmpty == true)
            AnimationFadeTraslate(
              controller: _newReleasesAnimCtr,
              initialAnimation: true,
              initialAnimationTimeOut: const Duration(milliseconds: 200),
              child: const Section(
                title: "New Releases",
                child: CarouselNewReleases(),
              ),
            ),
          // ElevatedButton(
          //   onPressed: () {
          //     final homeBloc = context.read<HomeBloc>();
          //     homeBloc.add(EventHomeLogout());
          //   },
          //   child: const Text('Logout'),
          // ),
        ],
      ),
    );
  }
}
