import 'package:flutter/material.dart';
import 'package:cat_sanctuary/model/cat.dart';

class CatCarouselItem extends StatelessWidget {
  final Cat cat;

  const CatCarouselItem({
    super.key,
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(15),
      child: Column(
        children: [
          Image.network(
            cat.imageUrl,
            width: 300,
            fit: .cover,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: .all(10),
                  child: Text(
                    cat.name,
                    style: TextStyle(
                      fontWeight: .w800,
                      letterSpacing: -1.15,
                      fontSize: 21,
                    ),
                  ),
                ),
                Padding(
                  padding: .only(
                    left: 10,
                    top: 0,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    cat.description,
                    maxLines: 5,
                    overflow: .ellipsis,
                    style: TextStyle(
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
