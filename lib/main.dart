import 'package:flutter/material.dart';
import 'package:spotiplay/app/core/environment.dart';
import 'package:spotiplay/app/main.dart';

void main() {
  Environment().initConfig(ENV_MODE.DEV);
  runApp(const AppMain());
}
