import 'package:acorny_tree/themes.dart';
import 'package:acorny_tree/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.creamcolor,
      appBar: AppBar(
        backgroundColor: Themes.creamcolor,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              LineIcons.angleLeft,
              color: Themes.blackShade,
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Shop',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 16 / 9),
              physics: const BouncingScrollPhysics(),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CustomCard(
                    url: 'assets/anim/plant-lottie.zip', title: 'Plants'),
                const CustomCard(
                  title: 'Soil',
                  url: 'assets/anim/soil.zip',
                ),
                const CustomCard(url: 'assets/anim/tools.zip', title: 'Tools'),
                const CustomCard(url: 'assets/anim/land.json', title: 'Farm'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
