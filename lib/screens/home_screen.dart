import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

import '../providers/planters.dart';
import '../themes.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final planters = watch(plantersProvider);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Text(
                'My first garden',
                style: GoogleFonts.pressStart2p(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: const [
                      Icon(LineIcons.exclamationCircle),
                      SizedBox(width: 5),
                      Text('Next Task: Buy soil'),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/quest');
                },
              ),
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var i = 0; i < planters.length; i++)
                          Builder(
                            builder: (context) {
                              final planter = planters[i];
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: SizedBox(
                                      width: 150,
                                      height: 150,
                                      child:
                                          Image.asset(planter.prototype.image),
                                    ),
                                  ),
                                  Text(planter.alias),
                                ],
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton.icon(
                      label: const Text('Shop'),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/shop');
                      },
                      icon: const Icon(LineIcons.dollarSign),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Themes.potOrange,
                        elevation: 0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton.icon(
                      label: const Text('Water'),
                      onPressed: () {},
                      icon: const Icon(LineIcons.fill),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Themes.waterBlue,
                        elevation: 0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton.icon(
                      label: const Text('Seeds'),
                      onPressed: () {},
                      icon: const Icon(LineIcons.seedling),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Themes.plantGreen,
                        elevation: 0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton.icon(
                      label: const Text('Soil'),
                      onPressed: () {},
                      icon: const Icon(LineIcons.dumpster),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: Themes.brown,
                        elevation: 0,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    SizedBox(
                      width: 200,
                      child: XPBar(
                        xp: 120,
                        max: 1000,
                      ),
                    ),
                    Spacer(),
                    Text('Budget: \$0 / \$1000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class XPBar extends StatelessWidget {
  const XPBar({
    Key? key,
    required this.xp,
    required this.max,
  }) : super(key: key);

  final int xp;
  final int max;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Themes.green,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(2),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: xp / max,
            child: Container(
              decoration: BoxDecoration(
                color: Themes.plantGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(8),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            child: Text(
              'xp: $xp / $max',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
