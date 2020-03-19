import 'package:flutter/material.dart';
import 'package:resionapp/models/word.dart';

class FavoritePage extends StatelessWidget {
  FavoritePage(this.word);
  final Word word;

  static const routeName = "/favorit";

  @override
  Widget build(BuildContext context) {
    final tiles = word.items.map((item) {
      return new ListTile(title: new Text(item.name));
    });

    final divided = ListTile.divideTiles(
      context: context,
      tiles: tiles,
    ).toList();

    return new Scaffold(
      appBar: AppBar(title: Text("Yout Favorite")),
      body: new ListView(children: divided),
    );
  }
}
