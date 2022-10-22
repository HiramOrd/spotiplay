import 'package:spotiplay/models/exceptions/repository.dart';
import 'package:spotiplay/app/core/dio.dart';
import 'package:spotiplay/helpers/repository.dart';
import 'package:spotiplay/models/artist.dart';
import 'package:spotiplay/models/repository/artist.dart';

// TODO: Delete app dependency
class RepositoryArtistImpl extends RepositoryArtist {
  @override
  Future<List<Artist>> getRelatedArtist(String idArtist) async {
    final data = await DioClient().dio.get(
          '/artists/$idArtist/related-artists',
        );

    HelperRepository.isValidResponse(data.statusCode);
    if (data.data['artists'] == null) throw RepositoryNullDataException();

    final albums =
        (data.data['artists'] as List).map((e) => Artist.fromMap(e)).toList();
    return albums;
  }
}
