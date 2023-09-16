import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/meal.dart';
import 'meal_Itemdetail.dart';

class MealScreenItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  // final Function tempRemoveItem;
  MealScreenItems(
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
    this.complexity,
    this.affordability,
    // this.tempRemoveItem
  );

  String get ComplexityText {
    switch (complexity) {
      case Complexity.Simple:
        return "Simple";

      case Complexity.Medium:
        return "Medium";

      case Complexity.Challenging:
        return "Challenging";

      case Complexity.Hard:
        return "Hard";

      default:
        return "Unknown";
    }
  }

  String get AffordabilityText {
    switch (affordability) {
      case Affordability.Low:
        return "Cheap";
      case Affordability.Affordable:
        return "Affordable";
      case Affordability.Pricey:
        return "Lil Expensive";
      case Affordability.Luxurious:
        return "Highly Expensive";

      default:
        return "Unknown";
    }
  }

  void selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      MealItemDetailScreen.routNameItemDetails,
      arguments: id,
    )
        .then((popbutton_result) {
      if (popbutton_result != null) {
        // tempRemoveItem(popbutton_result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.withOpacity(.7),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15))),
                    padding: EdgeInsets.all(7),
                    width: 220,
                    alignment: Alignment.center,
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 5,
                      ),
                      Text("$duration min")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.bowlFood),
                      SizedBox(
                        width: 10,
                      ),
                      Text(ComplexityText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(FontAwesomeIcons.dollarSign),
                      SizedBox(
                        width: 10,
                      ),
                      Text(AffordabilityText)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
