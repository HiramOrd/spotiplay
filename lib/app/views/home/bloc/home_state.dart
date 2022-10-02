part of 'home_bloc.dart';

enum HomeStatus { initial, loading, info, logout }

class HomeState extends Equatable {
  final HomeStatus status;
  final String? info;
  final AlbumList? albumList;

  const HomeState({
    required this.status,
    this.info,
    this.albumList,
  });

  const HomeState.initial() : this(status: HomeStatus.initial);

  HomeState copyWith({
    HomeStatus? status,
    String? info,
    AlbumList? albumList,
  }) {
    return HomeState(
      status: status ?? this.status,
      info: info,
      albumList: albumList ?? this.albumList,
    );
  }

  @override
  List<Object?> get props => [albumList, info, status];
}
