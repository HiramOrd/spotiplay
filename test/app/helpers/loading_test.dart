import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotiplay/app/helpers/loading.dart';

void main() {
  group("App Helpers - loading", () {
    late HelperLoading loading;

    setUp(() {
      loading = HelperLoading();
    });

    test("init - null value", () {
      expect(loading.overlay, null);
    });

    testWidgets('show loading - put loading widget', (tester) async {
      await tester.pumpWidget(
        Builder(
          builder: (BuildContext context) {
            loading.show(context);
            return const Placeholder();
          },
        ),
      );

      expect(loading.overlay, isA<OverlayEntry>());
    });

    testWidgets("hide loading - removing loading widget ", (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(builder: (BuildContext context) {
              return Column(children: [
                ElevatedButton(
                  onPressed: () => loading.show(context),
                  child: const Text("show"),
                ),
                ElevatedButton(
                  onPressed: () => loading.hide(),
                  child: const Text("hide"),
                ),
              ]);
            }),
          ),
        ),
      );

      await tester.tap(find.widgetWithText(ElevatedButton, "show"));
      expect(loading.overlay, isA<OverlayEntry>());

      await tester.tap(find.widgetWithText(ElevatedButton, "hide"));
      expect(loading.overlay, isNull);
    });
  });
}
