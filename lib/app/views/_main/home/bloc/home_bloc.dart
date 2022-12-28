import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/error.dart';
import 'package:spotiplay/helpers/auth.dart';
import 'package:spotiplay/helpers/spotify_list.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/artist.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/use_cases/album/index.dart';

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

      final newReleases = await repoMusic.getNewReleases(0);
      final savedAlbums = await repoMusic.getSavedAlbums(0);

      final firstArtist = UcAlbumGetFirstArtist.execute(savedAlbums);
      final hasFirstArtist = firstArtist?.isNotEmpty == true;

      List<Artist>? relatedArtist = hasFirstArtist
          ? await repoArtist.getRelatedArtist(firstArtist!)
          : null;

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
      final newSavedAlbums = await repoMusic.getSavedAlbums(event.index);

      final nextAlbumsSaved = HelperSpotifyList.merge<AlbumSaved>(
        prevList: state.savedAlbums!,
        newList: newSavedAlbums,
      );

      emit(state.copyWith(savedAlbums: nextAlbumsSaved));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  updateNewReleases(EventHomeUpdateNewReleases event, emit) async {
    try {
      final newReleases = await repoMusic.getNewReleases(event.index);

      final nextReleases = HelperSpotifyList.merge<Album>(
        prevList: state.newReleases!,
        newList: newReleases,
      );

      emit(state.copyWith(newReleases: nextReleases));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  logout(EventHomeLogout event, emit) async {
    try {
      await HelperAuth.logout(repoLocal);

      emit(state.copyWith(status: HomeStatus.logout));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.info,
        info: "No se pudo completar el proceso",
      ));
    }
  }
}
