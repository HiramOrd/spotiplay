part of 'home_bloc.dart';

enum HomeStatus { initial, loading, info, logout }

class HomeState extends Equatable {
  final HomeStatus status;
  final String? info;
  final SpotifyList<AlbumSaved>? savedAlbums;
  final SpotifyList<Album>? newReleases;
  final List<Artist>? relatedArtist;

  const HomeState({
    required this.status,
    this.info,
    this.savedAlbums,
    this.newReleases,
    this.relatedArtist,
  });

  const HomeState.initial() : this(status: HomeStatus.initial);

  HomeState copyWith({
    HomeStatus? status,
    String? info,
    SpotifyList<AlbumSaved>? savedAlbums,
    SpotifyList<Album>? newReleases,
    List<Artist>? relatedArtist,
  }) {
    return HomeState(
      status: status ?? this.status,
      info: info,
      savedAlbums: savedAlbums ?? this.savedAlbums,
      newReleases: newReleases ?? this.newReleases,
      relatedArtist: relatedArtist ?? this.relatedArtist,
    );
  }

  @override
  List<Object?> get props => [newReleases, savedAlbums, info, status];
}
