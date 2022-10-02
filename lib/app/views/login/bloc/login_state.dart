part of 'login_bloc.dart';

enum LoginStatus { initial, loading, info, unAuthenticated, authenticated }

class LoginState extends Equatable {
  final LoginStatus status;
  final String? info;

  const LoginState({
    required this.status,
    this.info,
  });

  const LoginState.initial() : this(status: LoginStatus.initial);

  LoginState copyWith({
    LoginStatus? status,
    String? info,
  }) {
    return LoginState(
      status: status ?? this.status,
      info: info,
    );
  }

  @override
  List<Object?> get props => [info, status];
}
