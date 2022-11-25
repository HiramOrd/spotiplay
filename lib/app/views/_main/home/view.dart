import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  late final List<AnimationController> _savedAlbumsAnimCtr;

  @override
  void initState() {
    super.initState();

    const animDuration = Duration(milliseconds: 600);
    final controller = AnimationController(vsync: this, duration: animDuration);
    _savedAlbumsAnimCtr = List.generate(3, (_) => controller);
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // relatedArtist carousel
        if (state.relatedArtist?.isNotEmpty == true)
          AnimationFadeTraslate(
            controller: _savedAlbumsAnimCtr[2],
            initialAnimation: true,
            initialAnimationTimeOut: const Duration(milliseconds: 400),
            child: const Section(
              title: "Related Artist",
              child: CarouselRelatedArtist(),
            ),
          ),

        // savedAlbums carousel
        if (state.savedAlbums?.items?.isNotEmpty == true)
          AnimationFadeTraslate(
            controller: _savedAlbumsAnimCtr[0],
            initialAnimation: true,
            child: const Section(
              title: "Saved Albums",
              child: CarouselSavedAlbums(),
            ),
          ),

        // newReleases carousel
        if (state.newReleases?.items?.isNotEmpty == true)
          AnimationFadeTraslate(
            controller: _savedAlbumsAnimCtr[1],
            initialAnimation: true,
            initialAnimationTimeOut: const Duration(milliseconds: 200),
            child: const Section(
              title: "New Releases",
              child: CarouselNewReleases(),
            ),
          ),

        // Logout
        ElevatedButton(
          onPressed: () {
            final homeBloc = context.read<HomeBloc>();
            homeBloc.add(EventHomeLogout());
          },
          child: const Text('Logout'),
        ),
      ],
    );
  }
}
