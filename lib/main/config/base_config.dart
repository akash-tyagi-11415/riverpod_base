

/// abstract class for initialize config as per the flavour
abstract class BaseConfig {
  String get apiBaseUrl;
  String get appName;
  AppFlavor get appFlavor;
}

class DevConfig implements BaseConfig {
  @override
  String get appName => 'dev';

  @override
  AppFlavor get appFlavor => AppFlavor.dev;

  @override
  String get apiBaseUrl => "dev base url here";


}

class ProdConfig implements BaseConfig {
  @override
  String get appName => 'prod';

  @override
  AppFlavor get appFlavor => AppFlavor.prod;

  @override
  String get apiBaseUrl => "prod base url here";


}

/// Enum for app flavour

enum AppFlavor { dev, prod }
