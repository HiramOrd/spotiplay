import 'package:spotiplay/core/exceptions/repository.dart';

class HelperRepository {
  static void isValidResponse(int? statusCode) {
    if (statusCode != null) {
      if (statusCode < 200 || statusCode > 299) {
        throw RepositoryServerException();
      }
      return;
    }

    throw RepositoryResponseException();
  }
}
