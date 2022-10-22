import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/views/index.dart';
import 'package:spotiplay/use_cases/album/index.dart';
import 'package:spotiplay/use_cases/artist/get_related_artist.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

class InjectionBlocs extends StatelessWidget {
  const InjectionBlocs({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final ucArtistGetRelatedArtist = context.read<UcArtistGetRelatedArtist>();
    final ucAlbumGetSavedAlbums = context.read<UcAlbumGetSavedAlbums>();
    final ucAlbumGetNewReleases = context.read<UcAlbumGetNewReleases>();
    final uCLogin = context.read<UcAuthLogin>();
    final uCLogout = context.read<UcAuthLogout>();
    final uCValidateToken = context.read<UcAuthValidateToken>();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SplashBloc(
            ucValidateToken: uCValidateToken,
          ),
        ),
        BlocProvider(
          create: (context) => LoginBloc(
            ucLogin: uCLogin,
          ),
        ),
        BlocProvider(
          create: (context) => HomeBloc(
            ucLogout: uCLogout,
            ucGetNewReleases: ucAlbumGetNewReleases,
            ucAlbumGetSavedAlbums: ucAlbumGetSavedAlbums,
            ucArtistGetRelatedArtist: ucArtistGetRelatedArtist,
          ),
        ),
      ],
      child: child,
    );
  }
}
