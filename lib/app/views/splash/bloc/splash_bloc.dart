import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/use_cases/auth/validate_token.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  late UcAuthValidateToken ucValidateToken;

  SplashBloc({
    required this.ucValidateToken,
  }) : super(SplashState.initial()) {
    on<EventSplashValidateToken>(validateToken);
  }

  validateToken(EventSplashValidateToken event, emit) async {
    try {
      final hasToken = await ucValidateToken.execute();

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
