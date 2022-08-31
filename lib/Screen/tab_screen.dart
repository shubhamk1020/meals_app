import 'package:flutter/material.dart';
import '../Screen/Category_Screen.dart';
import '../Screen/favorite_Screen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({Key key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _Pages = [
    {'Page' : CategoryScreen(),
    'title': 'Category'},

      {'Page' :  FavoriteScreen(),
    'title': 'Your Favorite'},
    ];
  int _selectePageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_Pages[_selectePageIndex]['title']),
     
      ),
      body: _Pages[_selectePageIndex]['Page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectePageIndex,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.white,
        selectedFontSize: 14,
        elevation: 8,
        onTap: _selectPage,
        type: BottomNavigationBarType.shifting,
        items:  [
          
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
      ),
    );
  }
}
