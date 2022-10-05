import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:spotiplay/app/helpers/form.dart';

import 'mocks/context_test.mocks.dart';

@GenerateMocks([BuildContext])
void main() {
  group("App Helpers - Form", () {
    late MockBuildContext mockBuildContext;

    setUp(() {
      mockBuildContext = MockBuildContext();
    });

    group("notNull", () {
      test("String", () {
        const value = "example";
        final response = HelperForm.notNull(mockBuildContext, value);
        expect(response, isNull);
      });

      test("Null", () {
        const value = null;
        final response = HelperForm.notNull(mockBuildContext, value);
        expect(response, isA<String>());
      });

      test("Empty", () {
        const value = "";
        final response = HelperForm.notNull(mockBuildContext, value);
        expect(response, isA<String>());
      });
    });

    group("password", () {
      test("valid - 8 characters", () {
        const value = "12345678";
        final response = HelperForm.password(mockBuildContext, value);
        expect(response, isNull);
      });

      test("invalid - 7 character", () {
        const value = "1234567";
        final response = HelperForm.password(mockBuildContext, value);
        expect(response, isA<String>());
      });

      test("invalid - null", () {
        const value = null;
        final response = HelperForm.password(mockBuildContext, value);
        expect(response, isA<String>());
      });
    });

    group("email", () {
      test("valid", () {
        const value = "example@example.com";
        final response = HelperForm.email(mockBuildContext, value);
        expect(response, null);
      });

      test("invalid - without .com", () {
        const value = "example@example";
        final response = HelperForm.email(mockBuildContext, value);
        expect(response, isA<String>());
      });

      test("invalid - without @", () {
        const value = "exampleexample.com";
        final response = HelperForm.email(mockBuildContext, value);
        expect(response, isA<String>());
      });
    });
  });
}
