import 'package:flutter/material.dart';
import '../Dummy_Date.dart';
import '../Widget/mealItem.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/Category_meals';

   @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final CategoryTitle = routeArgs['title'];
    final CategoryId = routeArgs['id'];
    final categoriesmeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(CategoryId);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoriesmeals[index].title,
            imageUrl: categoriesmeals[index].imageUrl,
            duration: categoriesmeals[index].duration,
            complexity: categoriesmeals[index].complexity,
            affordability: categoriesmeals[index].affordability,
            );

        },
        itemCount: categoriesmeals.length,
      ),
    );
  }
}
