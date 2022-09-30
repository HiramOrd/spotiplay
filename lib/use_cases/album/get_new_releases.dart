import 'package:spotiplay/models/album_list.dart';
import 'package:spotiplay/models/repository/music.dart';

class UcAlbumGetNewReleases {
  final RepositoryMusic _repositoryMusic;

  UcAlbumGetNewReleases(
    this._repositoryMusic,
  );

  Future<AlbumList?> execute() async {
    final albums = await _repositoryMusic.getNewReleases();
    return albums;
  }
}
