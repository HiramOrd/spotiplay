// ignore_for_file: constant_identifier_names, camel_case_types

enum ENV_MODE { DEV, PROD }

abstract class ENV_CONFIG {
  ENV_MODE get type;
  String get api;
}

// Environment configs
class Environment {
  factory Environment() => _singleton;
  Environment._internal();
  static final Environment _singleton = Environment._internal();

  late ENV_CONFIG config;

  initConfig(ENV_MODE environment) {
    config = _getConfig(environment);
  }

  ENV_CONFIG _getConfig(ENV_MODE environment) {
    switch (environment) {
      case ENV_MODE.PROD:
        return ProdConfig();
      default:
        return DevConfig();
    }
  }
}

class DevConfig implements ENV_CONFIG {
  @override
  ENV_MODE get type => ENV_MODE.DEV;
  @override
  String get api => '';
}

class ProdConfig implements ENV_CONFIG {
  @override
  ENV_MODE get type => ENV_MODE.PROD;
  @override
  String get api => 'https://api.spotify.com/v1';
}
