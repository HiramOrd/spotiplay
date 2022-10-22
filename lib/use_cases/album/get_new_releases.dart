import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/repository/music.dart';

class UcAlbumGetNewReleases {
  final RepositoryMusic _repositoryMusic;

  SpotifyList<Album>? newReleases;
  bool next = true;

  UcAlbumGetNewReleases(
    this._repositoryMusic,
  ) {
    newReleases = SpotifyList<Album>();
  }

  Future<SpotifyList<Album>?> execute([int? index]) async {
    if (next == false) return newReleases;

    final response = await _repositoryMusic.getNewReleases(index ?? 0);

    final items = [
      ...(newReleases?.items ?? <Album>[]),
      ...(response.items ?? <Album>[]),
    ];

    newReleases = response;
    newReleases?.items = items;

    if (newReleases?.next?.isEmpty ?? true) next = false;
    return newReleases;
  }
}
