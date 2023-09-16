import 'package:flutter/material.dart';
import 'meal_screen_items.dart';
import '../models/meal.dart';

class MealsScreen extends StatefulWidget {
  static const mealScreen_routeStore = "/category-meals-screen";
  final List<Meal> availableMeals;
  MealsScreen(this.availableMeals);

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  ///////////////////////////////////////////////////

  // final String mealsId;
  // final String mealsTitle;
  // MealsScreen(this.mealsId, this.mealsTitle);

  ///////////////////////////////////////////////////

  late String categoryTitle;
  late List<Meal> displayedcategoryBasedMeals;

  @override
  void didChangeDependencies() {
    final routeArguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryId = routeArguments["id"];
    categoryTitle = routeArguments["title"]!;
    displayedcategoryBasedMeals = widget.availableMeals
        .where((element) => element.categories.contains(categoryId))
        .toList();

    super.didChangeDependencies();
  }

  void removeMeal(String removedMealid) {
    setState(() {
      displayedcategoryBasedMeals
          .removeWhere((toremoveMeal) => toremoveMeal.id == removedMealid);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemCount: displayedcategoryBasedMeals.length,
        itemBuilder: (context, index) {
          return MealScreenItems(
            displayedcategoryBasedMeals[index].id,
            displayedcategoryBasedMeals[index].title,
            displayedcategoryBasedMeals[index].imageUrl,
            displayedcategoryBasedMeals[index].duration,
            displayedcategoryBasedMeals[index].complexity,
            displayedcategoryBasedMeals[index].affordability,
            // removeMeal
          );
        },
      ),
    );
  }
}
