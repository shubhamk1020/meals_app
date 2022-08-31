import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({Key key, this.id, this.title, this.color}) : super(key: key);
   void selectCategories(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/Category_meals', 
    arguments: {'id': id, 'title':title}
      
    );
  }


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategories(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
