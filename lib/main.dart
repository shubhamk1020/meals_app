import 'package:flutter/material.dart';
import './Screen/tab_screen.dart';
import './Screen/meal_detail_screen.dart';
import './Screen/Category_Screen.dart';
import './Screen/categoriesMealsScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MealsApp',
      theme: ThemeData(
           canvasColor: Color.fromARGB(251, 251, 222, 219),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 22,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                
              )),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
              .copyWith(secondary: Colors.amber),
              ),
      initialRoute: '/',
      //  home:  CategoryScreen(),

      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // This is Not Important Sometimes Important

      // onGenerateRoute: (settings) {
      //   return MaterialPageRoute(builder: ((context) => CategoryScreen()));
      // },
      onUnknownRoute: ((settings) {
        return MaterialPageRoute(builder: ((context) => CategoryScreen()));
      }),
    );
  }
}
