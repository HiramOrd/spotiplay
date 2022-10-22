part of 'home_bloc.dart';

enum HomeStatus { initial, loading, info, logout }

class HomeState extends Equatable {
  final HomeStatus status;
  final String? info;
  final SpotifyList<AlbumSaved>? savedAlbums;
  final SpotifyList<Album>? newReleases;

  const HomeState({
    required this.status,
    this.info,
    this.savedAlbums,
    this.newReleases,
  });

  const HomeState.initial() : this(status: HomeStatus.initial);

  HomeState copyWith({
    HomeStatus? status,
    String? info,
    SpotifyList<AlbumSaved>? savedAlbums,
    SpotifyList<Album>? newReleases,
  }) {
    return HomeState(
      status: status ?? this.status,
      savedAlbums: savedAlbums ?? this.savedAlbums,
      newReleases: newReleases ?? this.newReleases,
      info: info,
    );
  }

  @override
  List<Object?> get props => [newReleases, savedAlbums, info, status];
}
