import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:spotiplay/models/repository/auth.dart';

class RepositoryAuthImpl extends RepositoryAuth {
  static const String _clientId = "f07cca84d7824b6d85238c8443573f3a";

  final uriLogin = Uri(
    scheme: 'https',
    host: 'accounts.spotify.com',
    path: '/authorize',
    queryParameters: {
      'client_id': _clientId,
      'scope': 'user-read-email user-library-read',
      'response_type': 'token',
      'redirect_uri': 'spotiplay://callback',
    },
  );

  @override
  Future<String> login() async {
    return await FlutterWebAuth.authenticate(
      url: Uri.decodeFull(uriLogin.toString()),
      callbackUrlScheme: "spotiplay",
    );
  }
}
