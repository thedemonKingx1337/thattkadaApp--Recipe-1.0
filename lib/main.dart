import 'package:flutter/material.dart';
import 'models/meal.dart';
import 'storage/sample_data.dart';
import 'screen_utils/filter_screen.dart';
import 'screen_utils/top_bottom_tabs_screen.dart';
import 'screen_utils/meals_screen.dart';
import 'screen_utils/categories_grid.dart';
import 'screen_utils/meal_Itemdetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> veg_filters = {"isveg": false};

  List<Meal> availableMeals = dummyMeals;
  List<Meal> favMeals = [];

  void setFelters(Map<String, bool> filterData) {
    setState(() {
      veg_filters = filterData;
      final isVegFilter_value = veg_filters["isveg"] ?? false;
      availableMeals = dummyMeals.where((iteratedMealelement) {
        //is veg filter is ON and item is non-veg then exclude
        if (isVegFilter_value && !iteratedMealelement.isVeg) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void toggle_Fav_ButtonFunction(String mealId) {
    final existingItemIndex = favMeals
        .indexWhere((IteratedMealelement) => IteratedMealelement.id == mealId);
    if (existingItemIndex >= 0) {
      setState(() {
        favMeals.removeAt(existingItemIndex);
      });
    } else {
      setState(() {
        favMeals.add(dummyMeals.firstWhere(
            (IteratedFooddy_element) => IteratedFooddy_element.id == mealId));
      });
    }
  }

  bool isMealFav(String id) {
    return favMeals.any((IteratedElement) => IteratedElement.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => TabScreen(favMeals),
        MealsScreen.mealScreen_routeStore: (context) =>
            MealsScreen(availableMeals),
        MealItemDetailScreen.routNameItemDetails: (context) =>
            MealItemDetailScreen(toggle_Fav_ButtonFunction, isMealFav),
        FilterScreen.routeNameFilterScreen: (context) =>
            FilterScreen(setFelters, veg_filters),
      },

      //safty measure

      onUnknownRoute: (settings) =>
          MaterialPageRoute(builder: (context) => CategoriesScreen()),

      /////////////////////////

      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(color: Colors.red),
        colorScheme:
            ThemeData().colorScheme.copyWith(secondary: Colors.redAccent),
        canvasColor: Colors.white,
      ),
    );
  }
}
