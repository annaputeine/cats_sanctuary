import '../model/cat.dart';

abstract interface class CatsRepository {
  Future<List<Cat>> getCats(String query);
}
