import 'package:flutter/material.dart';
import 'package:movies_app/shared/theme.dart';

class MovieRating extends StatelessWidget {
  MovieRating({Key? key, required this.movRating}) : super(key: key);

  int movRating;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        children: [for (var i = 0; i < 5; i++) greyRating()],
      ),
      Row(children: [for (var i = 0; i < movRating; i++) yellowRating()])
    ]);
  }
}

Icon yellowRating() {
  return Icon(
    Icons.star,
    size: 22,
    color: yellowColor,
  );
}

Icon greyRating() {
  return Icon(
    Icons.star,
    size: 22,
    color: greyColor,
  );
}
