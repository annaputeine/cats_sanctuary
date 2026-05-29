import 'package:equatable/equatable.dart';

class Cat {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  bool isAdopted;

  Cat({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.isAdopted,
  });

  void adoptCat() {
    isAdopted = true;
  }
}
