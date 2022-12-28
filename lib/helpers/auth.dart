import 'package:spotiplay/app/core/dio.dart';
import 'package:spotiplay/models/repository/index.dart';
import 'package:spotiplay/use_cases/auth/index.dart';

class HelperAuth {
  static login({
    required RepositoryAuth repositoryAuth,
    required RepositoryLocal repositoryLocal,
  }) async {
    final responseToken = await repositoryAuth.login();

    final token = await UcAuthGetToken.excecute(responseToken);
    DioClient.token = token;

    await repositoryLocal.saveLogin(token);
  }

  static logout(RepositoryLocal repositoryLocal) async {
    await repositoryLocal.deleteLogin();
    DioClient.token = null;
  }

  static validateToken(RepositoryLocal repositoryLocal) async {
    final token = await repositoryLocal.getToken();
    return token?.isNotEmpty == true;
  }
}
