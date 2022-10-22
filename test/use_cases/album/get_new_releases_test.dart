import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spotiplay/models/album.dart';
import 'package:spotiplay/models/spotify_list.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/use_cases/album/index.dart';

import 'get_new_releases_test.mocks.dart';

@GenerateMocks([RepositoryMusic])
void main() {
  group("Use case - Get new releases", () {
    late MockRepositoryMusic mockRepositoryMusic;
    late UcAlbumGetSavedAlbums getNewReleases;

    setUp(() {
      mockRepositoryMusic = MockRepositoryMusic();
      getNewReleases = UcAlbumGetSavedAlbums(mockRepositoryMusic);
    });

    tearDown(() {});

    test("Return album list", () async {
      when(mockRepositoryMusic.getNewReleases(0))
          .thenAnswer((_) async => SpotifyList<Album>());

      final response = await getNewReleases.execute();
      expect(response, isA<SpotifyList<Album>>());
    });
  });
}
