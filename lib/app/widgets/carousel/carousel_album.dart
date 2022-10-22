import 'package:flutter/material.dart';
import 'package:spotiplay/app/helpers/string.dart';
import 'package:spotiplay/app/widgets/aspect_ratio_builder.dart';
import 'package:spotiplay/app/widgets/carousel/carousel.dart';
import 'package:spotiplay/app/widgets/cover/cover.dart';
import 'package:spotiplay/app/widgets/cover/image.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:collection/collection.dart';

class CarouselAlbum<T> extends StatelessWidget {
  const CarouselAlbum({
    Key? key,
    required this.spotifyList,
    required this.getAlbum,
    required this.carouselUpdate,
    required this.albumOnTap,
  }) : super(key: key);

  final SpotifyList<T>? spotifyList;
  final Album? Function(T? item) getAlbum;
  final Function() carouselUpdate;
  final Function() albumOnTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatioBuilder(
      aspectRatio: 1 / 1,
      width: 200,
      builder: (aspectRatio, width, height) {
        const labelHeight = 80.0;

        return SizedBox(
          height: height + labelHeight,
          child: Carousel(
            items: spotifyList?.items ?? <T>[],
            itemsCount: spotifyList?.items?.length ?? 0,
            onEnd: carouselUpdate,
            builder: (context, index) {
              final album = getAlbum(spotifyList?.items?[index]);
              final artist = album?.artists?.map((e) => e.name).join(",");

              return Cover(
                width: width,
                labelHeight: labelHeight,
                title: HelperString.getString(album?.name),
                subtitle: "by $artist",
                image: CoverImage(
                  image: album?.images?.firstOrNull?.url,
                  aspectRatio: aspectRatio,
                ),
                onTap: albumOnTap,
              );
            },
          ),
        );
      },
    );
  }
}
