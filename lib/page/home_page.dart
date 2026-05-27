import 'package:flutter/material.dart';
import 'package:cat_sanctuary/widget/cats_list_item.dart';
import 'package:cat_sanctuary/model/cats.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                return CatsListItem(cat: Cats.catList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
