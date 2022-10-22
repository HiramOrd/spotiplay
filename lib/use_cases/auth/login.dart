import 'package:spotiplay/models/exceptions/use_cases.dart';
import 'package:spotiplay/models/repository/auth.dart';
import 'package:spotiplay/models/repository/local.dart';

class UcAuthLogin {
  final RepositoryAuth _repositoryAuth;
  final RepositoryLocal _repositoryLocal;

  UcAuthLogin(
    this._repositoryAuth,
    this._repositoryLocal,
  );

  Future<String> excecute() async {
    final response = await _repositoryAuth.login();
    final tokenRx = RegExp(r"(?<=#access_token=)(.*)(?=&token_type)");
    final token = tokenRx.stringMatch(response);

    if (token == null) throw UcNullDataException();
    print(token);
    await _repositoryLocal.saveLogin(token);
    return token;
  }
}
