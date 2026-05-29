import 'dart:async';

import 'package:cat_sanctuary/page/cat_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:cat_sanctuary/widget/cats_list_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/cat.dart';
import '../repository/cats_repository.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late final CatsRepository _catsRepository;

  final _searchController = TextEditingController();

  Timer? _debouncer;
  Future<List<Cat>>? _catsFuture;

  @override
  void initState() {
    super.initState();
    _catsRepository = context.read<CatsRepository>();
    _catsFuture = _catsRepository.getCats("");
    _searchController.addListener(_debounceSearch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Cats'),
        titleTextStyle: const TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SearchBar(
              controller: _searchController,
              hintText: "Search",
              onSubmitted: (query) {
                _debouncer?.cancel();
                _performSearch(query);
              },
              elevation: const WidgetStatePropertyAll(0.0),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
              backgroundColor: WidgetStatePropertyAll(
                Colors.grey[50],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder<List<Cat>>(
              future: _catsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final catList = snapshot.data ?? [];

                return catList.isEmpty
                    ? const Center(child: Text('No cats found.'))
                    : ListView.builder(
                        itemCount: catList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final currentCat = catList[index];
                          return GestureDetector(
                            onTap: () => _showCatDetail(
                              context: context,
                              cat: currentCat,
                            ),
                            child: CatsListItem(cat: currentCat),
                          );
                        },
                      );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _performSearch(_searchController.text);
          });
        },
        backgroundColor: Colors.brown,
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debouncer?.cancel();
    super.dispose();
  }

  void _debounceSearch() {
    _debouncer?.cancel();

    _debouncer = Timer(
      const Duration(seconds: 1),
      () => _performSearch(_searchController.text),
    );
  }

  void _performSearch(String query) {
    setState(() {
      _catsFuture = _catsRepository.getCats(query);
    });
  }

  void _showCatDetail({
    required BuildContext context,
    required Cat cat,
  }) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => CatDetailPage(cat: cat),
    ),
  );
}
