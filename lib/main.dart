import 'package:buttons/application/theme_service.dart';
import 'package:buttons/presentation/buttons_screen.dart';
import 'package:buttons/presentation/navigation_screens/screen_one.dart';
import 'package:buttons/presentation/navigation_screens/screen_two.dart';
import 'package:buttons/root_bottom_navigation.dart';
import 'package:buttons/theme.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        home: const RootBottomNavigation(),
        routes: <String, WidgetBuilder>{
          '/ScreenOne': (context) => const ScreenOne(),
          '/root': (BuildContext context) => const ButtonsExample(),
          '/ScreenTwo': (BuildContext context) => const ScreenTwo()
        },
      );
    });
  }
}
