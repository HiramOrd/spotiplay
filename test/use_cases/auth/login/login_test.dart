import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:spotiplay/models/exceptions/use_cases.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

import 'login_test.mocks.dart';

@GenerateMocks([RepositoryAuth, RepositoryLocal])
void main() {
  group("Use case - Login", () {
    late MockRepositoryAuth mockRepositoryAuth;
    late MockRepositoryLocal mockRepositoryLocal;
    late UcAuthLogin login;

    setUp(() {
      mockRepositoryAuth = MockRepositoryAuth();
      mockRepositoryLocal = MockRepositoryLocal();
      login = UcAuthLogin(mockRepositoryAuth, mockRepositoryLocal);
    });

    tearDown(() {});

    test("Invalid Token", () async {
      const token = "invalidToken";
      const url = token;

      when(mockRepositoryAuth.login()).thenAnswer((_) async => url);

      expect(() => login.excecute(), throwsA(isA<UcNullDataException>()));
    });

    test("Valid token", () async {
      const token = "validToken";
      const url = "#access_token=$token&token_type=Bearer&expires_in=3600";

      when(mockRepositoryAuth.login()).thenAnswer(
        (_) async => url,
      );

      when(mockRepositoryLocal.saveLogin(token)).thenAnswer(
        (_) async => null,
      );

      final response = await login.excecute();
      expect(response, token);
    });
  });
}
