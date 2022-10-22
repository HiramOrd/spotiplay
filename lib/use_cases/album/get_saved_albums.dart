import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/repository/music.dart';

class UcAlbumGetSavedAlbums {
  final RepositoryMusic _repositoryMusic;
  UcAlbumGetSavedAlbums(this._repositoryMusic);

  Future<SpotifyList<AlbumSaved>?> execute({
    int? paginationIndex,
    SpotifyList<AlbumSaved>? prevAlbumsSaved,
  }) async {
    if (prevAlbumsSaved?.next?.isEmpty == true) return prevAlbumsSaved;

    final albumsSaved = await _repositoryMusic.getSavedAlbums(
      paginationIndex ?? 0,
    );

    final nextAlbumsSaved = albumsSaved;
    nextAlbumsSaved.items = [
      ...(prevAlbumsSaved?.items ?? <AlbumSaved>[]),
      ...(albumsSaved.items ?? <AlbumSaved>[]),
    ];

    return nextAlbumsSaved;
  }
}
