import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/views/_main/home/bloc/home_bloc.dart';
import 'package:spotiplay/app/widgets/carousel/carousel_album.dart';
import 'package:spotiplay/models/album_saved.dart';

class CarouselSavedAlbums extends StatelessWidget {
  const CarouselSavedAlbums({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    final albumList = state.savedAlbums;

    return CarouselAlbum<AlbumSaved>(
      spotifyList: albumList,
      getAlbum: (item) => item?.album,
      carouselUpdate: () {
        final homeBloc = context.read<HomeBloc>();
        final index = state.savedAlbums?.items?.length;
        homeBloc.add(EventHomeUpdateSavedAlbums(index: index));
      },
      albumOnTap: () {},
    );
  }
}
