import 'package:flutter/material.dart';
import 'package:movies_app/presentation/pages/movies_page.dart';
import 'package:movies_app/presentation/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moviez App',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const MoviesPage(),
        '/searchpage': (context) => const SearchPage(),
      },
    );
  }
}
