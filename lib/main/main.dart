import 'package:farm_pik/main/config/app_config.dart';
import 'package:farm_pik/providers/provider_instance/instances.dart';
import 'package:farm_pik/route/route_name.dart';
import 'package:farm_pik/route/routes.dart';
import 'package:farm_pik/screens/home_page.dart';
import 'package:farm_pik/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MyApp extends ConsumerWidget {
  final AppConfig appConfig;
  MyApp(this.appConfig);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // debugPrint('running on ${appConfig.environment.configuration.apiBaseUrl}');
    // debugPrint('environment on ${appConfig.environment.configuration.appFlavor}');

    var appThemeProvider = ref.watch(themeProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,

      routeInformationProvider: Routes.router.routeInformationProvider,
      routeInformationParser: Routes.router.routeInformationParser,
      routerDelegate: Routes.router.routerDelegate,

      themeMode: appThemeProvider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),


      // initialRoute: RouteName.splash,
      // routes: Routes.routes,
    );
  }


}
