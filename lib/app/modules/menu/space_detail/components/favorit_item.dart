import 'package:flutter/material.dart';

class FavoritWidget extends StatefulWidget {
  const FavoritWidget({super.key});

  @override
  State<FavoritWidget> createState() => _FavoritWidgetState();
}

class _FavoritWidgetState extends State<FavoritWidget> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggleFavorite,
      child: Image.asset(
        _isFavorited
            ? 'assets/images/btn_wishlist_red.png'
            : 'assets/images/btn_wishlist.png',
        width: 40,
        height: 40,
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      // if (_isFavorited) {
      //   _isFavorited = false;
      // } else {
      //   _isFavorited = true;
      // }
      _isFavorited = !_isFavorited;
    });
  }
}
