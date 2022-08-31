import 'package:flutter/material.dart';
import '../Widget/category_item.dart';
import '../Dummy_Date.dart';


class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      
      appBar: AppBar(title: Text('DeliMeals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisCount: isPortrait ? 2 : 5,
            crossAxisSpacing: isPortrait ? 20 : 30,
            mainAxisSpacing: isPortrait ? 20 : 30,
            mainAxisExtent: isPortrait ? 150 : 200),
         children: DUMMY_CATEGORIES
            .map((e) => CategoryItem(id: e.id, title: e.title, color: e.color))
            .toList(),
           
      ),
    );
  }
}
