import 'package:flutter/material.dart';
import 'package:flutter_app_watch/pages/details_page.dart';
import 'package:flutter_app_watch/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const HomePage(),
      routes: {
        'home': (_) => const HomePage(),
        'details': (_) => const DetailsPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
