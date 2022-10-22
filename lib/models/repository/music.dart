import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';

abstract class RepositoryMusic {
  Future<SpotifyList<Album>> getNewReleases(int index);
  Future<SpotifyList<AlbumSaved>> getSavedAlbums(int index);
}
