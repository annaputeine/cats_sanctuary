import 'package:flutter/material.dart';

import '../model/cat.dart';

abstract class CatsRepository {
  Future<List<Cat>> getCats(String query);
}