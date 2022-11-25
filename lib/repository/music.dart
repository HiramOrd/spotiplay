import 'package:dio/dio.dart';
import 'package:spotiplay/models/exceptions/repository.dart';
import 'package:spotiplay/helpers/repository.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/album_saved.dart';
import 'package:spotiplay/models/repository/music.dart';

class RepositoryMusicImpl extends RepositoryMusic {
  RepositoryMusicImpl(this.dio);
  Dio dio;

  @override
  Future<SpotifyList<Album>> getNewReleases(int index) async {
    const path = '/browse/new-releases';
    final query = {"offset": index};

    final data = await dio.get(path, queryParameters: query);
    HelperRepository.isValidResponse(data.statusCode);
    if (data.data['albums'] == null) throw RepositoryNullDataException();

    final albums = (data.data['albums']['items'] as List)
        .map((e) => Album.fromMap(e))
        .toList();

    return SpotifyList<Album>.fromMap(data.data['albums'], albums);
  }

  @override
  Future<SpotifyList<AlbumSaved>> getSavedAlbums(int index) async {
    const path = '/me/albums';
    final query = {"offset": index};

    final data = await dio.get(path, queryParameters: query);
    HelperRepository.isValidResponse(data.statusCode);
    if (data.data == null) throw RepositoryNullDataException();

    final albums = (data.data['items'] as List).map((e) {
      return AlbumSaved.fromMap(e);
    }).toList();

    return SpotifyList<AlbumSaved>.fromMap(data.data, albums);
  }
}
