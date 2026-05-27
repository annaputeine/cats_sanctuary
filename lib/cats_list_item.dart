import 'package:cat_sanctuary/Cat.dart';
import 'package:flutter/cupertino.dart';

class CatsListItem extends StatelessWidget {
  final Cat cat;

  const CatsListItem({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .all(15),
      child: Row(
        children: [
          Image.network(
            cat.imageUrl,
            width: 90,
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
                  padding: .fromLTRB(10, 0, 10, 10),
                  child: Text(
                    cat.description,
                    maxLines: 3,
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
