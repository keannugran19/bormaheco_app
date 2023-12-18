import 'package:flutter/material.dart';
import 'package:gran_app/screens/home/components/search_field.dart';
import 'package:gran_app/screens/home/components/categories.dart';
import 'package:gran_app/screens/home/components/custom_app_bar.dart';
import 'package:gran_app/screens/home/components/houses.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const TopSection(),
        const SearchField(),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Categories(),
        Houses(),
      ]),
    );
  }
}

class ImageDetails {
  final String imagePath;
  ImageDetails({
    required this.imagePath,
  });
}
