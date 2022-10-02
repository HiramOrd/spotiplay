import 'package:spotiplay/models/album_list.dart';

abstract class RepositoryMusic {
  Future<AlbumList> getNewReleases();
}
