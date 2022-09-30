import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/helpers/error.dart';
import 'package:spotiplay/models/album_list.dart';
import 'package:spotiplay/use_cases/album/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late UcAuthLogout ucLogout;
  late UcAlbumGetNewReleases ucGetNewReleases;

  HomeBloc({
    required this.ucLogout,
    required this.ucGetNewReleases,
  }) : super(HomeState.initial()) {
    on<EventHomeInit>(init);
    on<EventHomeLogout>(logout);
  }

  init(EventHomeInit event, emit) async {
    try {
      final albumList = await ucGetNewReleases.execute();

      emit(state.copyWith(
        status: HomeStatus.initial,
        albumList: albumList,
      ));
    } catch (e, s) {
      HelperError.show(e, s);

      emit(state.copyWith(
        status: HomeStatus.info,
        info: "No se pudo completar el proceso",
      ));
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
