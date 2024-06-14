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
      theme: LightTheme(AppColor.green).theme,
      home: const SplashScreen(),
      routes: {
        '/home': (context) {
          return const HomePage();
        }
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
