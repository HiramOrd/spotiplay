import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/helpers/auth.dart';
import 'package:spotiplay/models/repository/index.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  late RepositoryLocal repoLocal;

  SplashBloc({
    required this.repoLocal,
  }) : super(const SplashState.initial()) {
    on<EventSplashValidateToken>(validateToken);
  }

  validateToken(EventSplashValidateToken event, emit) async {
    try {
      final hasToken = await HelperAuth.validateToken(repoLocal);

      emit(
        state.copyWith(
          status: hasToken
              ? SplashStatus.authenticated
              : SplashStatus.unAuthenticated,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: SplashStatus.info,
        info: "No se pudo completar el proceso",
      ));
    }
  }
}
