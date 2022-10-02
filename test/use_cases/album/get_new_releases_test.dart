import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spotiplay/models/album_list.dart';
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
      when(mockRepositoryMusic.getNewReleases())
          .thenAnswer((_) async => AlbumList());

      final response = await getNewReleases.execute();
      expect(response, isA<AlbumList>());
    });
  });
}
