import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _isFavorite = false;

  void onPressedFav() {
    final contextScaffold = ScaffoldMessenger.of(context);
    contextScaffold.removeCurrentSnackBar();
    contextScaffold.showSnackBar(SnackBar(
      content: _isFavorite
          ? Text("Eliminaste de favoritos")
          : Text("Agregaste a tus favoritos"),
    ));
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
      onPressed: onPressedFav,
    );
  }
}
