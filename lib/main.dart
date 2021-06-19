import 'package:acorny_tree/screens/quest_screen.dart';
import 'package:acorny_tree/screens/shop_screen.dart';
import 'package:acorny_tree/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

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

class AcornyTrees extends StatefulWidget {
  const AcornyTrees({Key? key}) : super(key: key);

  static const _pageDecor = PageDecoration(
    bodyAlignment: Alignment.center,
    titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
  );

  @override
  _AcornyTreesState createState() => _AcornyTreesState();
}

class _AcornyTreesState extends State<AcornyTrees> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController()
      ..addListener(() => setState(() => null));
  }

// ignore: todo
// TODO if user is not onboarding send straight to homepage
// state management?
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.generalTheme(context),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Builder(
        builder: (context) => IntroductionScreen(
          animationDuration: 500,
          globalFooter: SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.resolveWith((_) => Themes.lightGreen),
              ),
              onPressed: _textEditingController.text.isNotEmpty
                  ? () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const ShopScreen()),
                      )
                  : null,
              child: const Text(
                'Let\'s go right away!',
                textScaleFactor: 1.1,
                style: TextStyle(
                    shadows: [Shadow(blurRadius: 2, offset: Offset(1.5, .5))]),
              ),
            ),
          ),
          dotsDecorator: const DotsDecorator(activeSize: Size(0, 0)),
          showNextButton: false,
          showDoneButton: false,
          pages: [
            PageViewModel(
              decoration: AcornyTrees._pageDecor,
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
                    controller: _textEditingController,
                    decoration: const InputDecoration(prefixText: '\$'),
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    focusNode: FocusNode()..requestFocus(),
                    onSubmitted: (val) {
                      if (val.isNotEmpty) {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const QuestScreen()));
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
