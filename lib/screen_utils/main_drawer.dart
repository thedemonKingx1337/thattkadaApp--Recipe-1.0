import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(IconData icon, String name, void Function() tapAction) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      leading: Icon(
        icon,
        size: 28,
        color: Colors.white,
      ),
      title: Text(
        name,
        style: GoogleFonts.acme(fontSize: 24, color: Colors.white),
      ),
      onTap: tapAction,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.redAccent,
      child: Column(children: [
        Container(
          height: 150,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            "വിശന്നാൽ നിങ്ങൾ നിങ്ങൾ അല്ലാതെ ആവും??",
            style: GoogleFonts.aBeeZee(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent[700],
              borderRadius: BorderRadius.circular(30)),
          child: buildListTile(
            FontAwesomeIcons.bowlFood,
            "Meals",
            () {
              Navigator.of(context).pushReplacementNamed("/");
            },
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent[700],
              borderRadius: BorderRadius.circular(30)),
          child: buildListTile(
            FontAwesomeIcons.gears,
            "Filter",
            () {
              Navigator.of(context)
                  .pushReplacementNamed(FilterScreen.routeNameFilterScreen);
            },
          ),
        ),
      ]),
    );
  }
}
