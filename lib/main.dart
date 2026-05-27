import 'package:cat_sanctuary/cats_list_item.dart';
import 'package:flutter/material.dart';
import 'package:cat_sanctuary/cats.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.grey),
      ),
      home: const CatsMainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CatsMainPage extends StatefulWidget {
  const CatsMainPage({super.key, required this.title});

  final String title;

  @override
  State<CatsMainPage> createState() => _CatsMainPageState();
}

class _CatsMainPageState extends State<CatsMainPage> {
  var _selectedIndex = 0;
  var _showCat = false;

  late final DateTime today;

  @override
  void initState() {
    super.initState();

    today = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final seconds = today.second;
    final index = seconds % Cats.catList.length;
    final title = _showCat ? Cats.catList[index].name : "Cats";

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: .bold,
        ),
        centerTitle: false,
        backgroundColor: Colors.brown,
      ),
      body: _showCat
          ? Center(
              child: Column(
                children: [
                  Padding(
                    padding: .only(
                      left: 0,
                      top: 80,
                      right: 0,
                      bottom: 30,
                    ),
                    child: Image.network(
                      Cats.catList[index].imageUrl,
                      width: 300,
                      fit: .cover,
                    ),
                  ),
                  Text(
                    Cats.catList[index].name,
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: .bold,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Padding(
                  padding: .all(15),
                  child: SearchBar(
                    hintText: "Search",
                    elevation: WidgetStatePropertyAll(0.0),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.grey[50],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: Cats.catList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CatsListItem(cat: Cats.catList[index]);
                    },
                  ),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;

            if (index == 0) {
              _showCat = false;
            } else if (index == 1) {
              _showCat = true;
            }
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
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
