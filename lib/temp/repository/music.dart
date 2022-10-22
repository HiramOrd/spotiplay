import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/models/repository/music.dart';

class RepositoryMusicTemp extends RepositoryMusic {
  @override
  Future<SpotifyList<Album>> getNewReleases(int index) async {
    await Future.delayed(const Duration(seconds: 1));
    return albumsList(index);
  }

  @override
  Future<SpotifyList<AlbumSaved>> getSavedAlbums(int index) async {
    await Future.delayed(const Duration(seconds: 1));
    return albumSavedList(index);
  }
}

albumsList(int index) => SpotifyList<Album>.fromMap(
      {
        "href":
            "https://api.spotify.com/v1/browse/new-releases?country=MX&offset=0&limit=20",
        "limit": 20,
        "next":
            "https://api.spotify.com/v1/browse/new-releases?country=MX&offset=$index&limit=20",
        "offset": 0,
        "previous": null,
        "total": 100
      },
      albumItems,
    );

albumSavedList(int index) => SpotifyList<AlbumSaved>.fromMap(
      {
        "href":
            "https://api.spotify.com/v1/browse/new-releases?country=MX&offset=0&limit=20",
        "limit": 20,
        "next":
            "https://api.spotify.com/v1/browse/new-releases?country=MX&offset=$index&limit=20",
        "offset": 0,
        "previous": null,
        "total": 100
      },
      albumSavedItems,
    );

final albumSavedItems = ([albumSaved, albumSaved, albumSaved, albumSaved])
    .map((e) => AlbumSaved.fromMap(e))
    .toList();

final albumItems = ([album, album, album, album, album, album])
    .map((e) => Album.fromMap(e))
    .toList();

final albumSaved = {"added_at": "2022-10-07T18:03:15Z", "album": album};

final album = {
  "album_type": "single",
  "artists": [
    {
      "external_urls": {
        "spotify": "https://open.spotify.com/artist/69UypehHabb68utzfjAVlV"
      },
      "href": "https://api.spotify.com/v1/artists/69UypehHabb68utzfjAVlV",
      "id": "69UypehHabb68utzfjAVlV",
      "name": "Kany García",
      "type": "artist",
      "uri": "spotify:artist:69UypehHabb68utzfjAVlV"
    },
  ],
  "available_markets": [
    "AD",
    "AE",
    "AG",
    "AL",
  ],
  "external_urls": {
    "spotify": "https://open.spotify.com/album/2ew2njzdzMchb0J1ocVLPH"
  },
  "href": "https://api.spotify.com/v1/albums/2ew2njzdzMchb0J1ocVLPH",
  "id": "2ew2njzdzMchb0J1ocVLPH",
  "images": [
    {
      "height": 640,
      "url": "https://i.scdn.co/image/ab67616d0000b273b0ad6f3c5b30ee9e97540a77",
      "width": 640
    },
  ],
  "name": "La Siguiente",
  "release_date": "2022-09-21",
  "release_date_precision": "day",
  "total_tracks": 1,
  "type": "album",
  "uri": "spotify:album:2ew2njzdzMchb0J1ocVLPH"
};
