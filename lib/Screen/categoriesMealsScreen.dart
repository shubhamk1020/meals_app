import 'package:flutter/material.dart';
import '../Widget/mealItem.dart';
import '../Models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/Category_meals';

  final List<Meal> availableMeals;

  CategoryMealsScreen(this.availableMeals);

  @override
  State<CategoryMealsScreen> createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  String CategoryTitle;
  List<Meal> displayedMeals;
  var _loadedInitDate = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitDate) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      CategoryTitle = routeArgs['title'];
      final CategoryId = routeArgs['id'];
      displayedMeals = widget.availableMeals.where(
        (meal) {
          return meal.categories.contains(CategoryId);
        },
      ).toList();
      _loadedInitDate = true;
    }
    super.didChangeDependencies();
  }

  void _removeMeal(String mealId) {
    setState(() {
      displayedMeals.removeWhere((meal) => meal.id == mealId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayedMeals[index].id,
            title: displayedMeals[index].title,
            imageUrl: displayedMeals[index].imageUrl,
            duration: displayedMeals[index].duration,
            complexity: displayedMeals[index].complexity,
            affordability: displayedMeals[index].affordability,
          );
        },
        itemCount: displayedMeals.length,
      ),
    );
  }
}
