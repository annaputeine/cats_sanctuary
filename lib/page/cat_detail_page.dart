import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cat_sanctuary/model/cat.dart';

class CatDetailPage extends StatefulWidget {
  final Cat cat;

  const CatDetailPage({super.key, required this.cat});

  @override
  State<StatefulWidget> createState() => _CatDetailState();
}

class _CatDetailState extends State<CatDetailPage> {
  late bool _isAdopted;

  @override
  void initState() {
    super.initState();
    _isAdopted = widget.cat.isAdopted;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(widget.cat.name),
        titleTextStyle: TextStyle(
          fontSize: 23,
          color: Colors.white,
          fontWeight: .bold,
        ),
        centerTitle: false,
        backgroundColor: Colors.brown,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(widget.cat.imageUrl, fit: BoxFit.cover),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(),
                  ),
                ),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.grey[50]!.withValues(alpha: 0.0),
                          Colors.grey[50]!.withValues(alpha: 0.5),
                          Colors.grey[50]!,
                        ],
                        stops: const [0.0, 0.7, 1.0],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Image.network(
                    widget.cat.imageUrl,
                    width: 228,
                    fit: .cover,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: .only(
              left: 30,
              top: 0,
              right: 30,
              bottom: 10,
            ),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  widget.cat.name,
                  style: TextStyle(
                    fontWeight: .w700,
                    letterSpacing: -3,
                    fontSize: 35,
                  ),
                ),
                Text(
                  widget.cat.description,
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 72,
            width: double.infinity,
          ),
          _isAdopted
              ? Padding(
                  padding: .only(
                    left: 30,
                    top: 0,
                    right: 30,
                    bottom: 10,
                  ),
                  child: Text("This cat has a family <3"),
                )
              : OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _isAdopted = true;
                      widget.cat.adoptCat();
                    });
                  },
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                    ),
                    side: WidgetStateProperty.all<BorderSide>(
                      BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: .only(
                      left: 110,
                      top: 10,
                      right: 110,
                      bottom: 10,
                    ),
                    child: Text(
                      'Adopt Me',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.brown,
                        fontWeight: .bold,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
