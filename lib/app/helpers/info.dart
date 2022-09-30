import 'package:flutter/material.dart';

class HelperInfo {
  // Show text in snackbar
  static void showSnackbar(BuildContext context, String text) {
    final snackBar = SnackBar(
      content: Text(text),
    );
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
