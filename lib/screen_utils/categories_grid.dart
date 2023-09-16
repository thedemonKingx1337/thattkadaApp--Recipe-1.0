import 'package:flutter/material.dart';
import 'categories_item.dart';
import '../storage/sample_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: dummyData
          .map((iterated_catData) => CategoryItem(
              iterated_catData.id,
              iterated_catData.title,
              iterated_catData.bg_color,
              iterated_catData.image_url))
          .toList(),
    );
  }
}
