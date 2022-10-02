import 'package:flutter_test/flutter_test.dart';
import 'package:spotiplay/core/exceptions/repository.dart';
import 'package:spotiplay/helpers/repository.dart';

void main() {
  group("Helpers - Repository", () {
    test("Invalid Response", () async {
      int statusCode = 199;
      expect(
        () => HelperRepository.isValidResponse(statusCode),
        throwsA(isA<RepositoryServerException>()),
      );

      statusCode = 300;
      expect(
        () => HelperRepository.isValidResponse(statusCode),
        throwsA(isA<RepositoryServerException>()),
      );
    });

    test("Valid Response", () async {
      int statusCode = 200;
      expect(
        () => HelperRepository.isValidResponse(statusCode),
        returnsNormally,
      );

      statusCode = 299;
      expect(
        () => HelperRepository.isValidResponse(statusCode),
        returnsNormally,
      );
    });
  });
}
