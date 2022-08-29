import 'package:flutter/material.dart';
import './Category_Screen.dart';


void main() =>
  runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MealsApp',
      theme: ThemeData(canvasColor: const Color.fromRGBO(255, 254, 229, 1),
      fontFamily: 'Raleway',
      textTheme: ThemeData.light().textTheme.copyWith(
        bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1),),
          bodyText2: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: const TextStyle(fontSize: 22,fontFamily: 'RobotoCondensed',)
         
      ), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.amber)
      ),
            
      home:  const CategoryScreen(),
    );
  }
}
