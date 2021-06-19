import 'package:acorny_tree/screens/quest_screen.dart';
import 'package:acorny_tree/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:line_icons/line_icon.dart';
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
    return Scaffold(
      backgroundColor: Themes.oldBurgandy,
      body: Column(
        children: [
          TreeAppbar(
            color: Themes.brown,
            sliver: false,
          ),
          Expanded(
              child: Align(
            child: Container(
              width: 200,
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Lottie.asset(
                'assets/anim/money.zip',
                repeat: true,
                reverse: true,
                fit: BoxFit.cover,
              ),
            ),
          )),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Budget ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: _moneyController,
                      decoration: const InputDecoration(prefixText: '\$'),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      autofocus: true,
                      onSubmitted: (val) {
                        if (val.isNotEmpty) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (_) => const QuestScreen()),
                          );
                        }
                      },
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: LineIcon.check(),
                label: const Text('Continue'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const QuestScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(primary: Themes.brownAccent),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
