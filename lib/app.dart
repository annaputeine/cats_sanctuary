import 'package:flutter/material.dart';
import 'package:cat_sanctuary/page/cats_main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.grey),
      ),
      home: const CatsMainPage(),
    );
  }
}
