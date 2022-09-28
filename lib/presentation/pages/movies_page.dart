import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/shared/theme.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 29),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Moviez',
                        style: header,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Watch much easier',
                        style: subtitle,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 22,
                    color: blackColor,
                  ),
                ],
              ),
            ),
            featuredSlide('assets/images/featured_image.png', 'John Wick 4',
                'Action, Crime', 5),
          ],
        ),
      ),
    );
  }

  Padding featuredSlide(
      String imgAsset, String movTitle, String movCategory, int movRating) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                imgAsset,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Row(
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
                Row(children: [
                  for (var i = 0; i < movRating; i++) yellowRating()
                ]),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Icon yellowRating() {
    return Icon(
      // FontAwesomeIcons.solidStar,
      Icons.star,
      size: 22,
      color: yellowColor,
    );
  }
}
