import 'package:acorny_tree/screens/quest_screen.dart';
import 'package:acorny_tree/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../themes.dart';
import 'shop_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _moneyController = TextEditingController();

  static const _pageDecor = PageDecoration(
    bodyAlignment: Alignment.center,
    titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  );

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      animationDuration: 500,
      dotsDecorator: const DotsDecorator(activeSize: Size(0, 0)),
      showNextButton: false,
      showDoneButton: true,
      globalBackgroundColor: Themes.oldBurgandy,
      globalHeader: TreeAppbar(
        color: Themes.green,
        sliver: false,
      ),
      done: const Text(
        'Start Farming',
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      onDone: () async {
        await Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const ShopScreen()),
        );
      },
      pages: [
        PageViewModel(
          decoration: _pageDecor,
          title: 'Budget',
          image: Lottie.asset(
            'assets/anim/money.zip',
            repeat: true,
            reverse: true,
            fit: BoxFit.cover,
          ),
          bodyWidget: Center(
            child: SizedBox(
              width: 60,
              child: TextField(
                controller: _moneyController,
                decoration: const InputDecoration(prefixText: '\$'),
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                focusNode: FocusNode()..requestFocus(),
                onSubmitted: (val) {
                  if (val.isNotEmpty) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const QuestScreen()),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
