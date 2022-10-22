import 'package:spotiplay/models/artist.dart';

abstract class RepositoryArtist {
  Future<List<Artist>> getRelatedArtist(String idArtist);
}
