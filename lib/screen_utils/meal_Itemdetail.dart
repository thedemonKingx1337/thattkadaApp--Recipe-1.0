import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../storage/sample_data.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MealItemDetailScreen extends StatelessWidget {
  static const routNameItemDetails = "/meal-item-detail";
  final Function toggleFav_Passed;
  final Function isMealFav_Passed;
  MealItemDetailScreen(this.toggleFav_Passed, this.isMealFav_Passed);
  Widget buildSectionTitle(String textPassed) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        textPassed,
        style: GoogleFonts.heebo(fontSize: 15),
      ),
    );
  }

  Widget boundaryWidget(Widget innerWidget) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 250,
        width: double.infinity,
        child: innerWidget);
  }

  Widget boundaryWidgetBody(Widget innerWidget) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 300,
        width: double.infinity,
        child: innerWidget);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        dummyMeals.firstWhere((iteratedMeal) => iteratedMeal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              "Malus's - Magical -Ingredients",
              style: GoogleFonts.tangerine(
                  fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          boundaryWidget(
            ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (context, index) => Card(
                color: Colors.deepOrange[100],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(selectedMeal.ingredients[index]),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.centerLeft,
                child: buildSectionTitle("Let's Cook")),
          ),
          boundaryWidgetBody(ListView.builder(
            itemCount: selectedMeal.steps.length,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Text("#${index + 1}"),
                  ),
                  title: Text(selectedMeal.steps[index]),
                ),
                Divider(),
              ],
            ),
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => toggleFav_Passed(mealId),
        child: Icon(isMealFav_Passed(mealId)
            ? FontAwesomeIcons.solidHeart
            : FontAwesomeIcons.heart),
      ),
    );
  }
}
