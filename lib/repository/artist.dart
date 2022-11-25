import 'package:dio/dio.dart';
import 'package:spotiplay/models/exceptions/repository.dart';
import 'package:spotiplay/helpers/repository.dart';
import 'package:spotiplay/models/artist.dart';
import 'package:spotiplay/models/repository/artist.dart';

class RepositoryArtistImpl extends RepositoryArtist {
  RepositoryArtistImpl(this.dio);
  Dio dio;

  @override
  Future<List<Artist>> getRelatedArtist(String idArtist) async {
    final path = '/artists/$idArtist/related-artists';

    final data = await dio.get(path);
    HelperRepository.isValidResponse(data.statusCode);
    if (data.data['artists'] == null) throw RepositoryNullDataException();

    final albums = (data.data['artists'] as List).map((e) {
      return Artist.fromMap(e);
    }).toList();
    return albums;
  }
}
