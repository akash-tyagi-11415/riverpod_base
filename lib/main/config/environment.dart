

import 'package:farm_pik/main/config/base_config.dart';
import 'package:flutter/material.dart';

/// Environment class is used to assign flavour for app like debug, staging,
/// prod
class Environment {
  Environment._privateConstructor();

  static final Environment _instance = Environment._privateConstructor();

  BaseConfig _configuration = DevConfig();

  static Environment get instance => _instance;

  /// function is used to set Configuration
  void setConfig(AppFlavor environment) {
    debugPrint('setConfig:: ${environment.name}');
    _configuration = _getConfig(environment);
  }

  /// function is used to return Configuration
  /// return [BaseConfig]
  BaseConfig get configuration => _configuration;

  BaseConfig _getConfig(AppFlavor appFlavour) {

    debugPrint('getting flavor:: ${appFlavour.name}');

    switch (appFlavour) {
      case AppFlavor.prod:
        return ProdConfig();
      case AppFlavor.dev:
        return DevConfig();
      // case AppFlavor.uat:
      //   return UatConfig();
      default:
        return DevConfig();
    }
  }
}
