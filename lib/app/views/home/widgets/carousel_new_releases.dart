import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/views/home/bloc/home_bloc.dart';
import 'package:spotiplay/app/widgets/carousel/carousel_album.dart';
import 'package:spotiplay/models/album.dart';

class CarouselNewReleases extends StatelessWidget {
  const CarouselNewReleases({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    final albumList = state.newReleases;

    return CarouselAlbum<Album>(
      spotifyList: albumList,
      getAlbum: (item) => item,
      carouselUpdate: () {
        final homeBloc = context.read<HomeBloc>();
        final index = state.newReleases?.items?.length;
        homeBloc.add(EventHomeUpdateNewReleases(index: index));
      },
      albumOnTap: () {},
    );
  }
}
