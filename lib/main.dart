import 'package:acorny_tree/screens/homepage.dart';
import 'package:acorny_tree/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const String _appTitle = 'RPGrass';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  runApp(const AcornyTrees());
}

class AcornyTrees extends StatelessWidget {
  const AcornyTrees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: Themes.generalTheme(context),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
    );
  }
}
