/*
import 'package:cat_sanctuary/widget/cat_carousel_item.dart';
import 'package:cat_sanctuary/model/cats.dart';
import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Bookmark'),
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
          Expanded(
            child: CarouselView.builder(
              itemExtent: 400,
              itemCount: _cats.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('This is a cat!'),
                        duration: const Duration(milliseconds: 1500),
                        width: 280.0,
                        padding: .all(15),
                        behavior: .floating,
                        shape: RoundedRectangleBorder(borderRadius: .circular(10.0)),
                      ),
                    );
                  },
                  child: CatCarouselItem(cat: _cats[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
 */
