import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
                width: 250,
                height: double.infinity,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: CupertinoSearchTextField(
              style: TextStyle(color: blackColor),
              backgroundColor: const Color(0xFFFFFFFF),
              padding: const EdgeInsets.fromLTRB(20, 20, 30, 20),
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
        ],
      )),
    );
  }
}
