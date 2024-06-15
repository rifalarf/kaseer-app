import 'package:flutter/material.dart';
import 'package:kaseer_app/core/core.dart';
import 'package:kaseer_app/features/home/home.dart';

import '../features/settings/settings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kaseer App',
      theme: LightTheme(AppColors.green).theme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case MainPage.routeName:
            return MaterialPageRoute(builder: (_) {
              return const MainPage();
            });
          default:
            return MaterialPageRoute(builder: (_) {
              return const Scaffold(
                body: Center(child: Text("Error Not Found")),
              );
            });
        }
      },
    );
  }
}
