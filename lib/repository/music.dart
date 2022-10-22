import 'package:spotiplay/models/exceptions/repository.dart';
import 'package:spotiplay/helpers/repository.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/models/repository/music.dart';
import 'package:spotiplay/app/core/dio.dart';

// TODO: Delete app dependency
class RepositoryMusicImpl extends RepositoryMusic {
  @override
  Future<SpotifyList<Album>> getNewReleases(int index) async {
    final data = await DioClient().dio.get(
      '/browse/new-releases',
      queryParameters: {
        "offset": index,
      },
    );

    HelperRepository.isValidResponse(data.statusCode);

    if (data.data['albums'] == null) throw RepositoryNullDataException();

    final albums = (data.data['albums']['items'] as List)
        .map((e) => Album.fromMap(e))
        .toList();

    return SpotifyList<Album>.fromMap(data.data['albums'], albums);
  }

  @override
  Future<SpotifyList<AlbumSaved>> getSavedAlbums(int index) async {
    final data = await DioClient().dio.get(
      '/me/albums',
      queryParameters: {
        "offset": index,
      },
    );

    HelperRepository.isValidResponse(data.statusCode);

    if (data.data == null) throw RepositoryNullDataException();

    final albums =
        (data.data['items'] as List).map((e) => AlbumSaved.fromMap(e)).toList();

    return SpotifyList<AlbumSaved>.fromMap(data.data, albums);
  }
}
