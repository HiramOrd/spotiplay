import 'package:flutter/material.dart';
import 'package:spotiplay/core/environment.dart';
import 'package:spotiplay/app/main.dart';

void main() {
  Environment().initConfig(ENV_MODE.PROD);
  runApp(const AppMain());
}
