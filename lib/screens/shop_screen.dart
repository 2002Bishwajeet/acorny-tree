import 'package:flutter/material.dart';

import '../themes.dart';
import '../widgets/app_bar.dart';
import '../widgets/custom_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TreeAppbar(
        color: Themes.potOrange,
        sliver: false,
        title: Text('Shop'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 4 / 5),
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
