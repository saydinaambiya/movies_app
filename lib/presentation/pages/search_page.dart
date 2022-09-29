import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movies_app/presentation/widgets/movie_card.dart';
import 'package:movies_app/shared/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: greyColor,
                    gradient: LinearGradient(
                        colors: [gradientColor1, gradientColor2],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                width: 290,
                height: double.infinity,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 24),
                    child: CupertinoSearchTextField(
                      style: TextStyle(color: blackColor),
                      backgroundColor: const Color(0xFFFFFFFF),
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          FontAwesomeIcons.magnifyingGlass,
                          color: blackColor,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Search Result (3)',
                        style: title,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MovieCard(
                      movieImage: "assets/images/the_dark.png",
                      movieTitle: "The Dark II",
                      movieCategory: "Horror",
                      movieRating: 4),
                  const SizedBox(height: 30),
                  MovieCard(
                      movieImage: "assets/images/dark_knight.png",
                      movieTitle: "The Dark Knight",
                      movieCategory: "Heroes",
                      movieRating: 5),
                  const SizedBox(height: 30),
                  MovieCard(
                      movieImage: "assets/images/dark_tower.png",
                      movieTitle: "The Dark Tower",
                      movieCategory: "Horror",
                      movieRating: 4),
                  const SizedBox(height: 73),
                  MaterialButton(
                    color: blackColor,
                    height: 60,
                    minWidth: 250,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    textColor: whiteColor,
                    onPressed: () {},
                    child: const Text(
                      "Suggest Movie",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 70)
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
