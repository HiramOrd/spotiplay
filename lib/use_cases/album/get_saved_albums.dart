import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/repository/music.dart';

class UcAlbumGetSavedAlbums {
  final RepositoryMusic _repositoryMusic;

  SpotifyList<AlbumSaved>? savedAlbums;
  bool next = true;

  UcAlbumGetSavedAlbums(
    this._repositoryMusic,
  ) {
    savedAlbums = SpotifyList<AlbumSaved>();
  }

  Future<SpotifyList<AlbumSaved>?> execute([int? index]) async {
    if (next == false) return savedAlbums;

    final response = await _repositoryMusic.getSavedAlbums(index ?? 0);

    final items = [
      ...(savedAlbums?.items ?? <AlbumSaved>[]),
      ...(response.items ?? <AlbumSaved>[]),
    ];

    savedAlbums = response;
    savedAlbums?.items = items;

    if (savedAlbums?.next?.isEmpty ?? true) next = false;
    return savedAlbums;
  }
}
