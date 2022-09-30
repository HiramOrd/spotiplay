part of 'login_bloc.dart';

enum LoginStatus { initial, loading, info, unAuthenticated, authenticated }

class LoginState {
  final LoginStatus status;
  final String? info;

  LoginState({
    required this.status,
    this.info,
  });

  LoginState.initial() : this(status: LoginStatus.initial);

  LoginState copyWith({
    LoginStatus? status,
    String? info,
  }) {
    return LoginState(
      status: status ?? this.status,
      info: info,
    );
  }
}
