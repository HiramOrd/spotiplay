part of 'splash_bloc.dart';

enum SplashStatus { initial, loading, info, unAuthenticated, authenticated }

class SplashState extends Equatable {
  final SplashStatus status;
  final String? info;

  const SplashState({
    required this.status,
    this.info,
  });

  const SplashState.initial() : this(status: SplashStatus.initial);

  SplashState copyWith({
    SplashStatus? status,
    String? info,
  }) {
    return SplashState(
      status: status ?? this.status,
      info: info,
    );
  }

  @override
  List<Object?> get props => [status, info];
}
