import 'package:acorny_tree/themes.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.landBrown,
      body: Center(
        child: SizedBox(
          width: 650,
          child: Image.asset(
            'assets/img/cover1.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
