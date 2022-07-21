import 'package:farm_pik/route/route_name.dart';
import 'package:farm_pik/screens/home_page.dart';
import 'package:farm_pik/screens/next_page.dart';
import 'package:farm_pik/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  // static final routes = <String, WidgetBuilder>{
  //   RouteName.splash: (_) => const SplashScreen(),
  //   RouteName.homeScreen: (_) => HomePage(),
  // };
  //
  // static callPush(BuildContext context, String routeName) async {
  //   await Navigator.pushNamed(context, routeName);
  // }
  //
  // static callPop(BuildContext context) async {
  //   Navigator.pop(context);
  // }


static  final  router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: RouteName.splash,
        builder: (BuildContext context, GoRouterState state) =>
        const SplashScreen(),
      ),
      GoRoute(
        path: RouteName.homeScreen,
        builder: (BuildContext context, GoRouterState state) => HomePage(),
      ),
      GoRoute(
        path: RouteName.heloScreen,
        builder: (BuildContext context, GoRouterState state) => Helo(),
      ),
    ],
  );
}
