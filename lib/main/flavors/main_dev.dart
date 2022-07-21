import 'package:farm_pik/main/config/base_config.dart';
import 'package:farm_pik/main/config/environment.dart';
import 'package:farm_pik/main/config/initialize_app.dart';
import 'package:farm_pik/main/config/app_config.dart';
import 'package:flutter/material.dart';

void main() async {
  Environment.instance.setConfig(AppFlavor.dev);
  AppConfig devAppConfig =
  AppConfig(appName: 'Firm Pik ${AppFlavor.dev.name}', environment: Environment.instance);
  Widget app = await initializeApp(devAppConfig);
  runApp(app);
}