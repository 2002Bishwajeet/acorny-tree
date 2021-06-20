import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/plants.dart';

const smallPotPlanter = PlanterPrototype(
  name: 'Small Pot',
  image: 'assets/plants/succ.png',
);
const medBedPlanter = PlanterPrototype(
  name: 'Medium Bed',
  image: 'assets/plants/bed.png',
);
const largeBedPlanter = PlanterPrototype(
  name: 'Large Bed',
  image: 'assets/plants/bed.png',
);

final plantersProvider = Provider((ref) {
  return const <Planter>[
    Planter(
      prototype: smallPotPlanter,
      alias: 'Succulents',
      plants: [],
    ),
    Planter(
      prototype: largeBedPlanter,
      alias: 'Large Bed',
      plants: [],
    ),
  ];
});
