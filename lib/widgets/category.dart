import 'package:flutter/material.dart';
import 'package:flutter_ecom/widgets/category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: ListView(scrollDirection: Axis.horizontal, children: <Widget>[
          CategoryCard(icon: Icon(Icons.book, size: 40.0), name: 'Books'),
          CategoryCard(icon: Icon(Icons.computer, size: 40.0), name: 'Laptops'),
          CategoryCard(
              icon: Icon(Icons.videogame_asset, size: 40.0), name: 'Games'),
          CategoryCard(icon: Icon(Icons.videocam, size: 40.0), name: 'Movies'),
          CategoryCard(icon: Icon(Icons.watch, size: 40.0), name: 'Watches'),
          CategoryCard(
              icon: Icon(Icons.weekend, size: 40.0), name: 'Furniture'),
        ]));
  }
}
