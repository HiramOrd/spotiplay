import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

import 'logout_test.mocks.dart';

@GenerateMocks([RepositoryLocal])
void main() {
  group("Use case - Logout", () {
    late MockRepositoryLocal mockRepositoryAuth;
    late UcAuthLogout logout;

    setUp(() {
      mockRepositoryAuth = MockRepositoryLocal();
      logout = UcAuthLogout(mockRepositoryAuth);
    });

    tearDown(() {});

    test("Returns Normally", () async {
      when(mockRepositoryAuth.deleteLogin()).thenAnswer((_) async => null);

      expect(() => logout.execute(), returnsNormally);
    });
  });
}
