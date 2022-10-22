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
    late UcAlbumGetNewReleases getNewReleases;

    setUp(() {
      mockRepositoryMusic = MockRepositoryMusic();
      getNewReleases = UcAlbumGetNewReleases(mockRepositoryMusic);
    });

    tearDown(() {});

    test("Return album list", () async {
      when(mockRepositoryMusic.getNewReleases(0))
          .thenAnswer((_) async => SpotifyList<Album>());

      final response = await getNewReleases.execute();
      expect(response, isA<SpotifyList<Album>>());
    });

    test("Return album list with data", () async {
      // Initial Value
      final prevNewReleases = SpotifyList(
        next: "with next value",
        items: [Album(), Album(), Album()],
      );

      // Value from DB
      final nextNewReleases = SpotifyList(
        next: null,
        items: [Album()],
      );

      when(mockRepositoryMusic.getNewReleases(1))
          .thenAnswer((_) async => nextNewReleases);

      final response = await getNewReleases.execute(
        paginationIndex: 1,
        prevNewReleases: prevNewReleases,
      );

      expect(response?.items?.length, 4);
      expect(response?.next, null);
    });
  });
}
