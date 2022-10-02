import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

import 'validate_token_test.mocks.dart';

@GenerateMocks([RepositoryLocal])
void main() {
  group("Use case - Validate Token", () {
    late MockRepositoryLocal mockRepositoryAuth;
    late UcAuthValidateToken validateToken;

    setUp(() {
      mockRepositoryAuth = MockRepositoryLocal();
      validateToken = UcAuthValidateToken(mockRepositoryAuth);
    });

    tearDown(() {});

    test("With token", () async {
      const token = "token";
      when(mockRepositoryAuth.getToken()).thenAnswer((_) async => token);

      final response = await validateToken.execute();
      expect(response, true);
    });

    test("Without token", () async {
      const token = null;
      when(mockRepositoryAuth.getToken()).thenAnswer((_) async => token);

      final response = await validateToken.execute();
      expect(response, false);
    });
  });
}
