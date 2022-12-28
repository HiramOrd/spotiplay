import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:collection/collection.dart';

class UcAlbumGetFirstArtist {
  UcAlbumGetFirstArtist();

  static String? execute(SpotifyList<AlbumSaved>? albumsList) {
    final firstSavedAlbum = albumsList?.items?.firstOrNull?.album;
    final firstArtist = firstSavedAlbum?.artists?.firstOrNull?.id;

    return firstArtist;
  }
}
