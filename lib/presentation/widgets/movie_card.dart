import 'package:flutter/material.dart';
import 'package:movies_app/presentation/widgets/movie_rating.dart';
import 'package:movies_app/shared/theme.dart';

class MovieCard extends StatelessWidget {
  MovieCard(
      {Key? key,
      required this.movieImage,
      required this.movieTitle,
      required this.movieCategory,
      required this.movieRating})
      : super(key: key);

  String movieImage;
  String movieTitle;
  String movieCategory;
  int movieRating;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              movieImage,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              movieTitle,
              style: movTitle,
            ),
            const SizedBox(height: 5),
            Text(
              movieCategory,
              style: subtitle,
            ),
            const SizedBox(height: 20),
            MovieRating(movRating: movieRating)
          ],
        )
      ],
    );
  }
}
