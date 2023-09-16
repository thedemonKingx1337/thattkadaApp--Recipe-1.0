enum Complexity {
  Simple,
  Medium,
  Challenging,
  Hard,
}

enum Affordability {
  Low,
  Affordable,
  Pricey,
  Luxurious,
}

enum SugarLvl {
  High,
  Normal,
  Low,
  Medium,
}

enum CalorieLvl {
  High,
  Normal,
  Low,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVeg;

  final SugarLvl sugarLvl;
  final CalorieLvl calorieLvl;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isVeg,
    required this.sugarLvl,
    required this.calorieLvl,
  });
}
