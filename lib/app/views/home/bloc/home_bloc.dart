import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/error.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/use_cases/album/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late UcAuthLogout ucLogout;
  late UcAlbumGetNewReleases ucGetNewReleases;
  late UcAlbumGetSavedAlbums ucAlbumGetSavedAlbums;

  HomeBloc({
    required this.ucLogout,
    required this.ucGetNewReleases,
    required this.ucAlbumGetSavedAlbums,
  }) : super(const HomeState.initial()) {
    on<EventHomeInit>(init);
    on<EventHomeUpdateSavedAlbums>(updateSavedAlbums);
    on<EventHomeUpdateNewReleases>(updateNewReleases);
    on<EventHomeLogout>(logout);
  }

  init(EventHomeInit event, emit) async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));

      final newReleases = await ucGetNewReleases.execute();
      final savedAlbums = await ucAlbumGetSavedAlbums.execute();

      emit(state.copyWith(
        status: HomeStatus.initial,
        newReleases: newReleases,
        savedAlbums: savedAlbums,
      ));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  updateSavedAlbums(EventHomeUpdateSavedAlbums event, emit) async {
    try {
      final savedAlbums = await ucAlbumGetSavedAlbums.execute(
        event.index,
      );

      emit(state.copyWith(savedAlbums: savedAlbums));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  updateNewReleases(EventHomeUpdateNewReleases event, emit) async {
    try {
      final newReleases = await ucGetNewReleases.execute(
        event.index,
      );

      emit(state.copyWith(newReleases: newReleases));
    } catch (e, s) {
      HelperError.show(e, s);
      add(EventHomeLogout());
    }
  }

  logout(EventHomeLogout event, emit) async {
    try {
      await ucLogout.execute();
      emit(state.copyWith(status: HomeStatus.logout));
    } catch (e) {
      emit(state.copyWith(
        status: HomeStatus.info,
        info: "No se pudo completar el proceso",
      ));
    }
  }
}
