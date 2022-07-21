import 'package:farm_pik/providers/provider_instance/instances.dart';
import 'package:farm_pik/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class HomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var redHomeCounter = ref.watch(homeProvider);
    var readString = ref.watch(appbarString);
    var appThemeProvider = ref.watch(themeProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text(readString),
           leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){
             context.pop();
           },),
          actions: [
            IconButton(
                onPressed: () {
                  if (appThemeProvider.themeMode == ThemeMode.dark) {
                    appThemeProvider.setTheme(ThemeMode.light);
                  } else {
                    appThemeProvider.setTheme(ThemeMode.dark);
                  }
                },
                icon: appThemeProvider.themeMode == ThemeMode.light
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode)
            ),
            IconButton(icon: const Icon(Icons.forward),onPressed: (){
              context.push(RouteName.heloScreen);
            },),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count  ${redHomeCounter.value.toString()}',
              style: const TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    redHomeCounter.incrementValue();
                    // appThemeProvider.setTheme(ThemeMode.dark);
                  },
                  child: const Text('+', style: TextStyle(fontSize: 20)),
                ),
                RaisedButton(
                  onPressed: () {
                    redHomeCounter.decrementValue();
                    // appThemeProvider.setLightTheme();
                    // appThemeProvider.setTheme(ThemeMode.light);
                  },
                  child: const Text('-', style: TextStyle(fontSize: 20)),
                ),
              ],
            )
          ],
        ));
  }
}
