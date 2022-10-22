import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/string.dart';
import 'package:spotiplay/app/views/home/bloc/home_bloc.dart';
import 'package:spotiplay/app/widgets/aspect_ratio_builder.dart';
import 'package:spotiplay/app/widgets/image_button.dart';
import 'package:spotiplay/app/core/style.dart';

class CarouselRelatedArtist extends StatelessWidget {
  const CarouselRelatedArtist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeBloc>().state;
    final relatedArtist = state.relatedArtist;

    return AspectRatioBuilder(
      aspectRatio: 1 / 1,
      width: 140,
      builder: (aspectRatio, width, height) {
        const labelHeight = 50.0;

        return SizedBox(
          height: height + labelHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: relatedArtist?.length ?? 0,
            padding: const EdgeInsets.symmetric(horizontal: Style.PADDING),
            separatorBuilder: (context, index) {
              return const SizedBox(width: Style.XL);
            },
            itemBuilder: (context, index) {
              final artist = relatedArtist![index];

              return SizedBox(
                width: width,
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ImageButton(
                        image: Image.network(
                          artist.images![0].url!,
                          fit: BoxFit.cover,
                          width: width,
                          height: height,
                        ),
                        onTap: () {},
                      ),
                    ),
                    const SizedBox(height: Style.PADDING),
                    Text(
                      HelperString.getString(artist.name),
                      style: Style.TEXT_MD_WHITE_BOLD,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
