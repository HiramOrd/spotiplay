import 'package:spotiplay/models/repository/local.dart';
import 'package:spotiplay/core/dio.dart';

class UcAuthLogout {
  final RepositoryLocal _repositoryLocal;

  UcAuthLogout(
    this._repositoryLocal,
  );

  Future execute() async {
    await _repositoryLocal.deleteLogin();
    DioClient.token = null;
  }
}
