import 'package:spotiplay/models/artist.dart';
import 'package:spotiplay/models/repository/index.dart';

class UcArtistGetRelatedArtist {
  final RepositoryArtist _repositoryArtist;

  UcArtistGetRelatedArtist(this._repositoryArtist);

  Future<List<Artist>?> execute(String idArtist) async {
    final response = await _repositoryArtist.getRelatedArtist(idArtist);
    return response;
  }
}
