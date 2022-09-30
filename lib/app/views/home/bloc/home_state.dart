part of 'home_bloc.dart';

enum HomeStatus { initial, loading, info, logout }

class HomeState {
  final HomeStatus status;
  final String? info;
  final AlbumList? albumList;

  HomeState({
    required this.status,
    this.info,
    this.albumList,
  });

  HomeState.initial() : this(status: HomeStatus.initial);

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
}
