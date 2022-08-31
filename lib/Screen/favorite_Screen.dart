import 'package:flutter/material.dart';


class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('this is Favourite Screen',style: TextStyle(fontSize: 75),),
      ),
    );
  }
}