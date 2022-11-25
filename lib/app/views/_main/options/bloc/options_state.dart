part of 'options_bloc.dart';

enum OptionsStatus { initial, loading, info, unAuthenticated, authenticated }

class OptionsState extends Equatable {
  final OptionsStatus status;
  final String? info;

  const OptionsState({
    required this.status,
    this.info,
  });

  const OptionsState.initial() : this(status: OptionsStatus.initial);

  OptionsState copyWith({
    OptionsStatus? status,
    String? info,
  }) {
    return OptionsState(
      status: status ?? this.status,
      info: info,
    );
  }

  @override
  List<Object?> get props => [status, info];
}
