import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';
import '../model/cat.dart';
import '../repository/cats_repository.dart';

class DayPage extends StatefulWidget {
  const DayPage({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  late final CatsRepository catsRepository;

  List<Cat> _cats = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    catsRepository = context.read<CatsRepository>();

    _loadCats();
  }

  Future<void> _loadCats() async {
    final cats = await catsRepository.getCats("");

    setState(() {
      _cats = cats;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    final index = Random().nextInt(_cats.length);

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(_cats[index].name),
        titleTextStyle: const TextStyle(
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
              padding: const EdgeInsets.only(
                top: 80,
                bottom: 30,
              ),
              child: Image.network(
                _cats[index].imageUrl,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              _cats[index].name,
              style: const TextStyle(
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