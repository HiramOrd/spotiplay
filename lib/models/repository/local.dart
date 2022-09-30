abstract class RepositoryLocal {
  Future saveLogin(String token);
  Future deleteLogin();
  Future<String?> getToken();
}
