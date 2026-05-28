import 'package:cat_sanctuary/page/cat_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:cat_sanctuary/widget/cats_list_item.dart';
import 'package:cat_sanctuary/model/cats.dart';

import '../model/cat.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Cats'),
        titleTextStyle: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: .bold,
        ),
        centerTitle: false,
        backgroundColor: Colors.brown,
      ),
      body: Column(
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
                return GestureDetector(
                  onTap: () => _showCatDetail(context: context, cat: Cats.catList[index]),
                  child: CatsListItem(cat: Cats.catList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showCatDetail({
    required BuildContext context,
    required Cat cat,
  }) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CatDetailPage(cat: cat),
    ),
  );
}
