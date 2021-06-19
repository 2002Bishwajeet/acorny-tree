import 'package:acorny_tree/screens/onboarding.dart';
import 'package:acorny_tree/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  timeDilation = 0.5;
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const AcornyTrees());
}

class AcornyTrees extends StatelessWidget {
  const AcornyTrees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.generalTheme(context),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: const OnboardingScreen(),
    );
  }
}
