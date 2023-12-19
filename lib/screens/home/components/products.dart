import 'package:gran_app/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gran_app/constants/colors..dart';
import 'package:gran_app/data/data.dart';
import 'package:gran_app/model/product.dart';
import 'package:gran_app/screens/details/details_screen.dart';

class Products extends StatefulWidget {
  @override
  _HousesState createState() => _HousesState();
}

class _HousesState extends State<Products> {
  Widget _buildHouse(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    product products = productsList[index];

    String formattedPrice = products.price.toStringAsFixed(2);

    formattedPrice = formattedPrice.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match match) => '${match[1]},',
    );

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreen(products: products),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: appPadding,
          vertical: appPadding / 2,
        ),
        child: Container(
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: size.width,
                      fit: BoxFit.cover,
                      image: AssetImage(products.imageUrl),
                    ),
                  ),
                  Positioned(
                    right: appPadding / 2,
                    top: appPadding / 2,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(15)),
                      child: IconButton(
                        icon: products.isFav
                            ? const Icon(
                                Icons.favorite_rounded,
                                color: red,
                              )
                            : const Icon(
                                Icons.favorite_border_rounded,
                                color: black,
                              ),
                        onPressed: () {
                          setState(() {
                            products.isFav = !products.isFav;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    products.type.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    '$formattedPrice pesos',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      products.address,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 15, color: black.withOpacity(0.4)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: productsList.length,
        itemBuilder: (context, index) {
          return _buildHouse(context, index);
        },
      ),
    );
  }
}
