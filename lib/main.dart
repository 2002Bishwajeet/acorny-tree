import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String _appTitle = 'RPGrass';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(AcornyTrees());
}

class AcornyTrees extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
