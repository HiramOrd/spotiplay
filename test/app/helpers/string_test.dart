import 'package:flutter_test/flutter_test.dart';
import 'package:spotiplay/app/helpers/string.dart';

void main() {
  group("App Helpers - Strings", () {
    group("getString", () {
      test("with null", () {
        final string = HelperString.getString(null);
        expect(string, HelperString.defaultString);
      });
      test("with empty string", () {
        final string = HelperString.getString("");
        expect(string, HelperString.defaultString);
      });

      test("with number", () {
        final string = HelperString.getString(123);
        expect(string, "123");
      });

      test("with string", () {
        final string = HelperString.getString("example");
        expect(string, "example");
      });
    });
  });
}
