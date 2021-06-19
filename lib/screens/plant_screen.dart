import 'package:acorny_tree/models/plant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../themes.dart';

class PlantScreen extends StatelessWidget {
  const PlantScreen({Key? key, required this.plant}) : super(key: key);

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Themes.blue.withOpacity(.5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(plant.image),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        plant.name,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const Placeholder(
                        color: Colors.blue,
                        fallbackHeight: 20,
                        fallbackWidth: 50,
                      ),
                      const Spacer(),
                      const Placeholder(
                        color: Colors.pink,
                        fallbackHeight: 20,
                        fallbackWidth: 50,
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.asset(
                'assets/anim/plant_money.zip',
                width: 200,
              ),
              Text(
                DateFormat.Hm().format(plant.interval),
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
