import 'package:acorny_tree/screens/homepage.dart';
import 'package:acorny_tree/screens/onboarding.dart';
import 'package:acorny_tree/screens/quest_screen.dart';
import 'package:acorny_tree/screens/shop_screen.dart';
import 'package:acorny_tree/themes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';

void main() {
  timeDilation = .5;
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  runApp(const AcornyTrees());
}

class AcornyTrees extends StatelessWidget {
  const AcornyTrees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: Themes.generalTheme(context),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const HomePage(),
          '/onboard': (context) => const OnboardingScreen(),
          '/shop': (context) => const ShopScreen(),
          '/quest': (context) => const QuestScreen(),
        },
        home: kDebugMode ? const AppWrapper() : const OnboardingScreen(),
      );
}

class AppWrapper extends StatelessWidget {
  const AppWrapper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: (RawKeyEvent key) {
        if (key.logicalKey == LogicalKeyboardKey.keyQ) {
          Navigator.pushReplacementNamed(context, '/quest');
        } else if (key.logicalKey == LogicalKeyboardKey.keyS) {
          Navigator.pushReplacementNamed(context, '/shop');
        } else if (key.logicalKey == LogicalKeyboardKey.keyH) {
          Navigator.pushReplacementNamed(context, '/home');
        } else if (key.logicalKey == LogicalKeyboardKey.keyO) {
          Navigator.pushReplacementNamed(context, '/onboard');
        }
      },
      child: const OnboardingScreen(),
    );
  }
}
