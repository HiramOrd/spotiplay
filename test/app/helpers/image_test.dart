import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotiplay/app/helpers/image.dart';

void main() {
  group("App Helpers - Image", () {
    group("getNetworkImage", () {
      test("with string", () {
        const value = "stringImage";
        final response = HelperImage.getNetworkImage(value);

        expect(response, isA<NetworkImage>());
      });

      test("empty string", () {
        const value = "";
        final response = HelperImage.getNetworkImage(value);

        expect(response, isA<AssetImage>());
      });

      test("null", () {
        const value = null;
        final response = HelperImage.getNetworkImage(value);

        expect(response, isA<AssetImage>());
      });
    });
  });
}
