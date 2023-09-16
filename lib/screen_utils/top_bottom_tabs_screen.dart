import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/meal.dart';
import 'fav_screen.dart';
import 'main_drawer.dart';

import 'categories_grid.dart';

class TabScreen extends StatefulWidget {
  List<Meal> passed_favList;
  TabScreen(this.passed_favList);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Widget> pages = [];
  int selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pages = [
      CategoriesScreen(),
      FavScreen(widget.passed_favList),
    ];
  }

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        elevation: 0,
        title: Text("Malu\'s thattkada"),
        centerTitle: true,
      ),
      body: pages[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.solidHeart,
              shadows: [
                Shadow(
                  color: Colors.redAccent,
                  offset: Offset(1, 1),
                  blurRadius: 18,
                )
              ],
              color: Colors.redAccent[700],
            ),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
