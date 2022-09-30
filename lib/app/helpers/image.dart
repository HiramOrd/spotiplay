import 'package:flutter/material.dart';

class HelperImage {
  // Return network image or default
  static getNetworkImage(String? url) {
    return url?.isNotEmpty == true
        ? NetworkImage(url!)
        : const AssetImage('assets/empty/placeholder.png');
  }
}
