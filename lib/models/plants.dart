class PlantPrototype {
  const PlantPrototype({
    required this.name,
    required this.image,
    required this.wateringInterval,
  });

  final String name;
  final String image;
  final Duration wateringInterval;
}

class Plant {
  const Plant({
    required this.prototype,
    required this.alias,
  });

  final PlantPrototype prototype;
  final String alias;
}

class PlanterPrototype {
  const PlanterPrototype({
    required this.name,
    required this.image,
  });

  final String name;
  final String image;
}

class Planter {
  const Planter({
    required this.prototype,
    required this.alias,
    required this.plants,
  });

  final PlanterPrototype prototype;
  final String alias;
  final List<Plant> plants;
}
