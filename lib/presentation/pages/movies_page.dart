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
            SizedBox(height: 29),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/images/featured_image.png'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Wick 4',
                              style: title,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Action, Crime',
                              style: subtitle,
                            )
                          ],
                        ),
                        const Spacer(),
                        yellowRating(),
                        yellowRating(),
                        yellowRating(),
                        yellowRating(),
                        yellowRating(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Icon yellowRating() {
    return Icon(
      FontAwesomeIcons.solidStar,
      size: 22,
      color: yellowColor,
    );
  }
}
