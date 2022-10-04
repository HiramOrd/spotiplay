import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spotiplay/app/helpers/info.dart';

void main() {
  group("App Helpers - info", () {
    final widget = MaterialApp(
      home: Scaffold(
        body: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () => HelperInfo.showSnackbar(context, "Example"),
            child: const Text('show'),
          );
        }),
      ),
    );

    testWidgets("showSnakbar - only once", (tester) async {
      await tester.pumpWidget(widget);
      final button = find.widgetWithText(ElevatedButton, "show");

      await tester.tap(button);
      await tester.pump();

      final snackbar = find.text("Example");
      expect(snackbar, findsOneWidget);
    });
  });
}
