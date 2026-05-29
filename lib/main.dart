import 'package:cat_sanctuary/repository/cats_repository.dart';
import 'package:cat_sanctuary/repository/in_memory_cats_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cat_sanctuary/app.dart';

void main() {
  final catsRepository = InMemoryCatsRepository();

  final catsRepositoryProvider = RepositoryProvider<CatsRepository>(
    create: (context) => catsRepository,
  );

  runApp(
    MultiRepositoryProvider(
      providers: [catsRepositoryProvider],
      child: const MyApp(),
    ),
  );
}
