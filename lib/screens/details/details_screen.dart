import 'package:flutter/material.dart';
import 'package:gran_app/model/product.dart';
import 'package:gran_app/screens/details/components/carousel_images.dart';
import 'package:gran_app/screens/details/components/custom_app_bar.dart';
import 'package:gran_app/screens/details/components/product_details.dart';

class DetailsScreen extends StatefulWidget {
  final product products;

  const DetailsScreen({Key? key, required this.products}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              CarouselImages(widget.products.moreImagesUrl),
              CustomAppBar(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ProductDetails(widget.products),
        ],
      ),
    );
  }
}
