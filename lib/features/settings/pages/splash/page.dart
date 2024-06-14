import 'package:flutter/material.dart';
import 'package:kaseer_app/core/core.dart';
import 'package:kaseer_app/core/extensions/extensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3))
        .then((value) => Navigator.pushNamedAndRemoveUntil(
          context, 
          '/home',
          (route) => false,
          ),
        );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.logo,
              width: MediaQuery.of(context).size.width / 2,
            ),
            20.0.height,
            const HeadingText("Kaseer App"),
          ],
        ),
      ),
    );
  }
}
