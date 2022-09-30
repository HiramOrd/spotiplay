import 'package:dio/dio.dart';
import 'package:spotiplay/core/exceptions/repository.dart';

class HelperRepository {
  static void isValidResponse(Response data) {
    if (data.statusCode != null) {
      if (data.statusCode! < 200 || data.statusCode! > 299) {
        throw RepositoryServerException();
      }
      return;
    }

    throw RepositoryResponseException();
  }
}
