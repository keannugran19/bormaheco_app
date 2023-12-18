import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  final List<String> imagesListUrl;

  CarouselImages(this.imagesListUrl);

  @override
  _CarouselImagesState createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    List<Widget> imageWidgets = widget.imagesListUrl.map((assetPath) {
      return Image.asset(assetPath, fit: BoxFit.cover);
    }).toList();

    return SizedBox(
      height: size.height * 0.4,
      child: CarouselSlider(
        options: CarouselOptions(
          height: size.height * 0.4,
          autoPlay: true,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1.0,
          enableInfiniteScroll: true, // Adjust this based on your requirements
        ),
        items: imageWidgets,
      ),
    );
  }
}
