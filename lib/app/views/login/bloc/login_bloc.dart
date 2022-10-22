import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotiplay/app/core/dio.dart';
import 'package:spotiplay/use_cases/auth/login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late UcAuthLogin ucLogin;

  LoginBloc({
    required this.ucLogin,
  }) : super(const LoginState.initial()) {
    on<EventLoginRegister>(register);
  }

  Future register(EventLoginRegister event, emit) async {
    emit(state.copyWith(status: LoginStatus.loading));

    try {
      final token = await ucLogin.excecute();
      DioClient.token = token;
      emit(state.copyWith(status: LoginStatus.authenticated));
    } catch (e) {
      if (e.runtimeType == PlatformException) {
        final error = e as PlatformException;

        if (error.code == "CANCELED") {
          emit(state.copyWith(
            status: LoginStatus.initial,
          ));
          return;
        }
      }

      emit(state.copyWith(
        status: LoginStatus.info,
        info: "No se pudo completar el proceso",
      ));
    }
  }
}
