import 'package:flutter/material.dart';
import '../Dummy_Date.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key key}) : super(key: key);

  static const routeName = '/Meal_Deals';
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
  Widget buildContainer(Widget child){
     
   return Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            width:  300,
            height: 150,
            child:child);
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    final mealId = ModalRoute.of(context).settings.arguments;
    final selectMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectMeal.title),
        elevation: 12,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ClipRect(
                
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: isPortrait ? double.infinity : 600,
                  height: isPortrait ? 250:300,
                  child: Image.network(
                    selectMeal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            buildSectionTitle(context,'Ingredient'),
            buildContainer(ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  elevation:3,
                 // surfaceTintColor: Colors.amber,
                  color:Theme.of(context).primaryColor,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(selectMeal.ingredients[index]),
                  ),
                ),
                itemCount: selectMeal.ingredients.length,
              ),
            ),
            buildSectionTitle(context,'Steps'),
            buildContainer(ListView.builder(
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(child: Text('# ${(index + 1)}'
                    ,),
                    ),
                   title: Text(selectMeal.steps[index]) ,
                  ),
                  Divider(),
                ],
              ),
              itemCount: selectMeal.steps.length,
            ),
            ),
           ],
        ),
      ),
    );
  }
}
