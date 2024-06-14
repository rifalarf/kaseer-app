import 'package:flutter/material.dart';
import 'package:kaseer_app/core/extensions/extensions.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(this.text,{
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: context.theme.primaryColor,
      ),
    );
  }
}