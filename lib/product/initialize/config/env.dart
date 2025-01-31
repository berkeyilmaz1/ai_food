import 'package:envied/envied.dart';

part 'env.g.dart';

abstract class AppConfiguration {
  String get menuApi;
  String get baseUrl;
}

@Envied(obfuscate: true, path: 'assets/env/.env')
final class Env implements AppConfiguration {
  @EnviedField(varName: 'menuApi')
  static final String _menuApi = _Env._menuApi;

  @EnviedField(varName: 'baseUrl')
  static final String _baseUrl = _Env._baseUrl;

  @override
  String get menuApi => _menuApi;

  @override
  String get baseUrl => _baseUrl;
}
