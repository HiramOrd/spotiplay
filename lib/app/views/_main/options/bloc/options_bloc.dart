import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'options_event.dart';
part 'options_state.dart';

class OptionsBloc extends Bloc<OptionsEvent, OptionsState> {
  OptionsBloc() : super(const OptionsState.initial()) {
    on<EventOptionsValidateToken>(validateToken);
  }

  validateToken(EventOptionsValidateToken event, emit) async {
    try {
      emit(
        state.copyWith(
          status: OptionsStatus.initial,
        ),
      );
    } catch (e) {
      emit(state.copyWith(
        status: OptionsStatus.info,
        info: "No se pudo completar el proceso",
      ));
    }
  }
}
