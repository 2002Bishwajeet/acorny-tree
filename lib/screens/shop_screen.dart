import 'package:acorny_tree/themes.dart';
import 'package:acorny_tree/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.creamcolor,
      appBar: AppBar(
        backgroundColor: Themes.creamcolor,
        elevation: 0,
        leading: const IconButton(
            onPressed: null,
            // onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back,
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
              children: const [
                CustomCard(path: 'assets/anim/plant.zip', title: 'Plants'),
                CustomCard(title: 'Soil', path: 'assets/anim/soil.zip'),
                CustomCard(path: 'assets/anim/tools.zip', title: 'Tools'),
                CustomCard(path: 'assets/anim/land.json', title: 'Farm'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
