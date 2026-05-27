import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text('Person'),
        titleTextStyle: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: .bold,
        ),
        centerTitle: false,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: AspectRatio(
            aspectRatio: 1 / 1,
            child: Card(
              color: Colors.brown[50],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Cats.",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("okay.", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
