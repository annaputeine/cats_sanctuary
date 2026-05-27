import 'package:cat_sanctuary/page/bookmark_page.dart';
import 'package:cat_sanctuary/page/day_page.dart';
import 'package:cat_sanctuary/page/home_page.dart';
import 'package:cat_sanctuary/page/person_page.dart';
import 'package:flutter/material.dart';

class CatsMainPage extends StatefulWidget {
  const CatsMainPage({super.key});

  @override
  State<CatsMainPage> createState() => _CatsMainPageState();
}

class _CatsMainPageState extends State<CatsMainPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          DayPage(),
          BookmarkPage(),
          PersonPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Day',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Badge(
              label: Text('cats!'),
              backgroundColor: Colors.green,
              child: Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
