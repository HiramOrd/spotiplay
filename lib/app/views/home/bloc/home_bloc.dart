import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/core/dio.dart';
import 'package:spotiplay/app/helpers/error.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/artist.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/use_cases/album/index.dart';
import 'package:spotiplay/use_cases/artist/get_related_artist.dart';
import 'package:spotiplay/use_cases/auth/index.dart';
import 'package:collection/collection.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late RepositoryArtist repoArtist;
  late RepositoryMusic repoMusic;
  late RepositoryLocal repoLocal;

  HomeBloc({
    required this.repoArtist,
    required this.repoLocal,
    required this.repoMusic,
  }) : super(const HomeState.initial()) {
    on<EventHomeInit>(init);
    on<EventHomeUpdateSavedAlbums>(updateSavedAlbums);
    on<EventHomeUpdateNewReleases>(updateNewReleases);
    on<EventHomeLogout>(logout);
  }

  init(EventHomeInit event, emit) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));

      final newReleases = await UcAlbumGetNewReleases(repoMusic).execute();
      final savedAlbums = await UcAlbumGetSavedAlbums(repoMusic).execute();

      // Get one saved album artist
      final firstSavedAlbum = savedAlbums?.items?.firstOrNull?.album;
      final firstArtist = firstSavedAlbum?.artists?.firstOrNull?.id;

      // Get related artist
      List<Artist>? relatedArtist;
      if (firstArtist?.isNotEmpty == true) {
        relatedArtist = await UcArtistGetRelatedArtist(repoArtist).execute(
          firstArtist!,
        );
      }

      emit(state.copyWith(
        status: HomeStatus.initial,
        newReleases: newReleases,
        savedAlbums: savedAlbums,
        relatedArtist: relatedArtist,
      ));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  updateSavedAlbums(EventHomeUpdateSavedAlbums event, emit) async {
    try {
      final savedAlbums = await UcAlbumGetSavedAlbums(repoMusic).execute(
        paginationIndex: event.index,
        prevAlbumsSaved: state.savedAlbums,
      );

      emit(state.copyWith(savedAlbums: savedAlbums));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  updateNewReleases(EventHomeUpdateNewReleases event, emit) async {
    try {
      final newReleases = await UcAlbumGetNewReleases(repoMusic).execute(
        paginationIndex: event.index,
        prevNewReleases: state.newReleases,
      );

      emit(state.copyWith(newReleases: newReleases));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  logout(EventHomeLogout event, emit) async {
    try {
      await UcAuthLogout(repoLocal).execute();
      DioClient.token = null;

      emit(state.copyWith(status: HomeStatus.logout));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.info,
        info: "No se pudo completar el proceso",
      ));
    }
  }
}
