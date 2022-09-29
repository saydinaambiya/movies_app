import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/presentation/widgets/featured_movie.dart';
import 'package:movies_app/presentation/widgets/movie_card.dart';
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
                    IconButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, '/searchpage');
                      }),
                      icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                      iconSize: 22,
                      color: blackColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              CarouselSlider.builder(
                  itemCount: 2,
                  itemBuilder: (context, index, realIndex) {
                    return FeaturedMovie(
                        imgAsset: "assets/images/featured_image.png",
                        movTitle: "John Wick 4",
                        movCategory: "Action, Crime",
                        movRating: 5);
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
                    MovieCard(
                        movieImage: "assets/images/mulan_image.png",
                        movieTitle: "Mulan Session",
                        movieCategory: "History, War",
                        movieRating: 3),
                    const SizedBox(height: 30),
                    MovieCard(
                        movieImage: "assets/images/bnb_image.png",
                        movieTitle: "Beauty & Beast",
                        movieCategory: "Sci-Fiction",
                        movieRating: 5),
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
}
