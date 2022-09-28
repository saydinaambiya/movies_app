import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/shared/theme.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
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
              const SizedBox(height: 30),
              CarouselSlider.builder(
                  itemCount: 2,
                  itemBuilder: (context, index, realIndex) {
                    return featuredSlide('assets/images/featured_image.png',
                        "John Wick 4", "Action, Crime", 5);
                  },
                  options: CarouselOptions(
                    viewportFraction: 0.9,
                    height: 290,
                    enableInfiniteScroll: false,
                  )),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'From Disney',
                          style: title,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    movieCard("assets/images/mulan_image.png", "Mulan Session",
                        "History, War", 3),
                    const SizedBox(height: 30),
                    movieCard(
                      "assets/images/bnb_image.png",
                      "Beauty & Beast",
                      "Sci-Fiction",
                      5,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row movieCard(String movieImage, String movieTitle, String movieCategory,
      int movieRating) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            movieImage,
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              movieTitle,
              style: title,
            ),
            const SizedBox(height: 5),
            Text(
              movieCategory,
              style: subtitle,
            ),
            const SizedBox(height: 20),
            ratingMovie(movieRating),
          ],
        )
      ],
    );
  }

  Container featuredSlide(
      String imgAsset, String movTitle, String movCategory, int movRating) {
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
              ratingMovie(movRating),
            ],
          ),
        ],
      ),
    );
  }

  Stack ratingMovie(int movRating) {
    return Stack(children: [
      Row(
        children: [for (var i = 0; i < 5; i++) greyRating()],
      ),
      Row(children: [for (var i = 0; i < movRating; i++) yellowRating()])
    ]);
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
}
