import 'package:shared_preferences/shared_preferences.dart';
import 'package:spotiplay/models/repository/local.dart';

class RepositoryLocalImpl extends RepositoryLocal {
  @override
  Future saveLogin(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  @override
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    return token;
  }

  @override
  Future deleteLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}

// {
//     "display_name": "hiram_ord.",
//     "email": "hiram8012@gmail.com",
//     "external_urls": {
//         "spotify": "https://open.spotify.com/user/hiram_ord."
//     },
//     "followers": {
//         "href": null,
//         "total": 0
//     },
//     "href": "https://api.spotify.com/v1/users/hiram_ord.",
//     "id": "hiram_ord.",
//     "images": [],
//     "type": "user",
//     "uri": "spotify:user:hiram_ord."
// }