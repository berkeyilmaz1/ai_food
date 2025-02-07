import 'package:ai_food/product/initialize/config/env.dart';

final class AppEnvironment {
  AppEnvironment.setup(AppConfiguration config) {
    _config = config;
  }
  static late final AppConfiguration _config;

  static String get apiKey => _config.menuApi;
  static String get baseUrl => _config.baseUrl;
  static String get geminiApiKey => _config.geminiApi;
}

enum AppEnvironmentItems {
  apiKey,
  baseUrl,
  geminiApi;

  String get value {
    switch (this) {
      case AppEnvironmentItems.apiKey:
        return AppEnvironment.apiKey;
      case AppEnvironmentItems.baseUrl:
        return AppEnvironment.baseUrl;
      case AppEnvironmentItems.geminiApi:
        return AppEnvironment.geminiApiKey;
    }
  }
}
