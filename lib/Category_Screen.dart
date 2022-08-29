import 'package:flutter/material.dart';
import './Dummy_Categories.dart';
import './category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeals')),
      body:  GridView(
        padding: const EdgeInsets.all(5),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisCount: isPortrait ? 2 : 5,
            crossAxisSpacing: isPortrait ? 20 : 30,
            mainAxisSpacing: isPortrait ? 20 : 30,
            mainAxisExtent: isPortrait ? 150 : 200),
        children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(title: e.title, color: e.color))
            .toList(),
      ) ,
    );
  }
}
