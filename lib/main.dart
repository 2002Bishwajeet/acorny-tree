import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'models/plant.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding.dart';
import 'screens/plant_screen.dart';
import 'screens/quest_screen.dart';
import 'screens/shop_screen.dart';
import 'themes.dart';

void main() {
  timeDilation = .5;
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const AcornyTrees());
}

class BouncyScrollBehavior extends ScrollBehavior {
  const BouncyScrollBehavior();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const AlwaysScrollableScrollPhysics()
        .applyTo(const BouncingScrollPhysics());
  }
}

class AcornyTrees extends StatelessWidget {
  const AcornyTrees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: const BouncyScrollBehavior(),
            child: child ?? const SizedBox(),
          );
        },
        theme: Themes.generalTheme(context),
        debugShowCheckedModeBanner: false,
        routes: {
          '/home': (context) => const HomeScreen(),
          '/onboard': (context) => const OnboardingScreen(),
          '/shop': (context) => const ShopScreen(),
          '/quest': (context) => const QuestScreen(),
          '/plant': (context) => PlantScreen(
                plant: Plant(
                  id: '1234',
                  name: 'Melissa',
                  interval: DateTime.now(),
                  image:
                      'https://i.cbc.ca/1.5326322.1571416324!/fileImage/httpImage/cannabis-plant-in-pot.JPG',
                ),
              ),
        },
        home: kDebugMode ? const AppWrapper() : const OnboardingScreen(),
      ),
    );
  }
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
        } else if (key.logicalKey == LogicalKeyboardKey.keyP) {
          Navigator.pushReplacementNamed(context, '/plant');
        }
      },
      child: const OnboardingScreen(),
    );
  }
}
