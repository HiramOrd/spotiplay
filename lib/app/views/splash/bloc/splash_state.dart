part of 'splash_bloc.dart';

enum SplashStatus { initial, loading, info, unAuthenticated, authenticated }

class SplashState {
  final SplashStatus status;
  final String? info;

  SplashState({
    required this.status,
    this.info,
  });

  SplashState.initial() : this(status: SplashStatus.initial);

  SplashState copyWith({
    SplashStatus? status,
    String? info,
  }) {
    return SplashState(
      status: status ?? this.status,
      info: info,
    );
  }
}
