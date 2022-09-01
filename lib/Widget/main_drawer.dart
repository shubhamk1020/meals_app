import 'package:flutter/material.dart';
import 'package:meals_app/Screen/filters_Screen.dart';
import '../Screen/Category_Screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  Widget buildListTitle(String title, IconData icon, Function tapMethod) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            color: Colors.black),
      ),
      onTap: tapMethod,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            color: Colors.amber,
            child: const Text(
              'Cooking Up!',
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  fontFamily: 'RobotoCondensed'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTitle('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTitle('Filters', Icons.settings,
          () {
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          })
        ],
      ),
    );
  }
}
