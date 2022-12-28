import 'dart:developer';
import 'package:spotiplay/models/exceptions/use_cases.dart';

class UcAuthGetToken {
  static Future<String> excecute(
    String responseToken,
  ) async {
    final tokenRx = RegExp(r"(?<=#access_token=)(.*)(?=&token_type)");
    final token = tokenRx.stringMatch(responseToken);

    if (token == null) throw UcNullDataException();
    log(token);
    return token;
  }
}
