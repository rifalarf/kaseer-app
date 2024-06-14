import 'package:flutter/material.dart';
import 'package:kaseer_app/core/core.dart';
import 'package:kaseer_app/core/extensions/extensions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
