import 'package:flutter/material.dart';
import '../models/meal.dart';
import 'meal_screen_items.dart';

class FavScreen extends StatelessWidget {
  final List<Meal> favMealsPassedTemp;
  FavScreen(this.favMealsPassedTemp);

  @override
  Widget build(BuildContext context) {
    if (favMealsPassedTemp.isEmpty) {
      return Center(
        child: Text("ഒരു foodഉം ഇഷ്ടല്ല? \n എന്താ Bro sigma മയിൽ ആണോ ???? ",
            textAlign: TextAlign.center),
      );
    } else {
      return ListView.builder(
        itemCount: favMealsPassedTemp.length,
        itemBuilder: (context, index) {
          return MealScreenItems(
            favMealsPassedTemp[index].id,
            favMealsPassedTemp[index].title,
            favMealsPassedTemp[index].imageUrl,
            favMealsPassedTemp[index].duration,
            favMealsPassedTemp[index].complexity,
            favMealsPassedTemp[index].affordability,
            // removeMeal
          );
        },
      );
    }
  }
}
