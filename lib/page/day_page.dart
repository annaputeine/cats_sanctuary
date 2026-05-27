import 'package:flutter/material.dart';

import '../model/cats.dart';

class DayPage extends StatefulWidget {
  const DayPage({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  late final DateTime now;

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    final seconds = now.second;
    final index = seconds % Cats.catList.length;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(Cats.catList[index].name),
        titleTextStyle: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: .bold,
        ),
        centerTitle: false,
        backgroundColor: Colors.brown,
      ),
      body: Center(
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
      ),
    );
  }
}
