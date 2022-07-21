
import 'package:farm_pik/main/config/app_config.dart';
import 'package:farm_pik/main/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  // FirebaseDatabase.instance.setPersistenceEnabled(true);

  return ProviderScope(child: MyApp(appConfig));
}
