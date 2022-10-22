import 'package:spotiplay/models/repository/auth.dart';

class RepositoryAuthTemp extends RepositoryAuth {
  @override
  Future<String> login() async {
    await Future.delayed(const Duration(seconds: 1));
    return "=#access_token=token&token_type";
  }
}
