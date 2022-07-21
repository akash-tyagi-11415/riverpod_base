import 'package:farm_pik/main/config/environment.dart';
import 'package:farm_pik/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // Routes.callPush(context, RouteName.homeScreen);
              context.push(RouteName.homeScreen);
            },
            child: Text(
                'This is splash ${Environment.instance.configuration.appFlavor.name}')),
      ),
    );
  }
}
