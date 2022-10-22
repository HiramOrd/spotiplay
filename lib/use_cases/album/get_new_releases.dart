import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/repository/music.dart';

class UcAlbumGetNewReleases {
  final RepositoryMusic _repositoryMusic;
  UcAlbumGetNewReleases(this._repositoryMusic);

  Future<SpotifyList<Album>?> execute({
    int? paginationIndex,
    SpotifyList<Album>? prevNewReleases,
  }) async {
    if (prevNewReleases?.next?.isEmpty == true) return prevNewReleases;

    final newReleases = await _repositoryMusic.getNewReleases(
      paginationIndex ?? 0,
    );

    final nextNewReleases = newReleases;
    nextNewReleases.items = [
      ...(prevNewReleases?.items ?? <Album>[]),
      ...(newReleases.items ?? <Album>[]),
    ];

    return nextNewReleases;
  }
}
