import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main_drawer.dart';

class FilterScreen extends StatefulWidget {
  final Function passedSetFilter;
  final Map<String, bool> currentFilterState;
  FilterScreen(this.passedSetFilter, this.currentFilterState);

  static const routeNameFilterScreen = "/filterPage";

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool is_veg = false;
  @override
  void initState() {
    is_veg = widget.currentFilterState["isveg"]!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(FontAwesomeIcons.solidSave),
              onPressed: () {
                final selectedFilters = {"isveg": is_veg};
                widget.passedSetFilter(selectedFilters);
              },
            ),
          )
        ],
        title: Text("Filters"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Text(
            "Customize menu",
            style: GoogleFonts.archivo(fontSize: 25),
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: SwitchListTile(
                value: is_veg,
                title: Text(
                  "കന്നുകാലി MODE [Veg]",
                  style: GoogleFonts.alexandria(fontSize: 15),
                ),
                subtitle: Text("Only include Veg items"),
                onChanged: (switchValue) {
                  setState(() {
                    is_veg = switchValue;
                  });
                },
              ),
            )
          ],
        ))
      ]),
    );
  }
}
