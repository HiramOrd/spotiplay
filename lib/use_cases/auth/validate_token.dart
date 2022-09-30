import 'package:spotiplay/models/repository/local.dart';

class UcAuthValidateToken {
  final RepositoryLocal _repositoryLocal;

  UcAuthValidateToken(
    this._repositoryLocal,
  );

  Future<bool> execute() async {
    final token = await _repositoryLocal.getToken();
    return token?.isNotEmpty == true;
  }
}
