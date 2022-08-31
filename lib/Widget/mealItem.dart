import 'package:flutter/material.dart';
import '../Models/meal.dart';


class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

   const MealItem(
      {Key key, @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.affordability}) : super(key: key);

  void selectMealItem() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMealItem,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: const EdgeInsets.all(10),
        child: Column(children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imageUrl,height:250 ,width: double.infinity,
                  fit: BoxFit.cover,),
                  ),
            ],
           
          )
        ],
      
        ),
      ),


    );
  }
}
