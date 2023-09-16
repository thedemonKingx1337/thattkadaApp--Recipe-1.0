import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  final String image_url;
  CategoryItem(this.id, this.title, this.color, this.image_url);

  void selectedCategory(BuildContext context) {
    Navigator.of(context).pushNamed(MealsScreen.mealScreen_routeStore,
        arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCategory(context),
      splashColor: color,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          title,
          style: GoogleFonts.kosugiMaru(
              shadows: [
                Shadow(
                    offset: Offset(1, 1), blurRadius: 10, color: Colors.black)
              ],
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w700,
              letterSpacing: 1),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: .5, image: AssetImage(image_url), fit: BoxFit.cover),
            gradient: LinearGradient(
                colors: [color.withOpacity(.7), color],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white54, width: 3)),
      ),
    );
  }
}
