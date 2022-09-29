import 'package:flutter/material.dart';
import 'package:movies_app/presentation/widgets/movie_rating.dart';
import 'package:movies_app/shared/theme.dart';

class FeaturedMovie extends StatelessWidget {
  FeaturedMovie({
    Key? key,
    required this.imgAsset,
    required this.movTitle,
    required this.movCategory,
    required this.movRating,
  }) : super(key: key);

  String imgAsset;
  String movTitle;
  String movCategory;
  int movRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              imgAsset,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 19),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movTitle,
                    style: title,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    movCategory,
                    style: subtitle,
                  )
                ],
              ),
              const Spacer(),
              MovieRating(movRating: movRating),
            ],
          ),
        ],
      ),
    );
  }
}
