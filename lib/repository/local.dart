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

    return token!;
  }

  @override
  Future deleteLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }
}
