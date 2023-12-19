import 'package:gran_app/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gran_app/constants/colors..dart';
import 'package:gran_app/model/product.dart';

class ProductDetails extends StatefulWidget {
  final product products;

  ProductDetails(this.products);

  @override
  _HouseDetailsState createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    String formattedPrice = widget.products.price.toStringAsFixed(2);

    formattedPrice = formattedPrice.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match match) => '${match[1]},',
    );

    return Expanded(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: appPadding,
              left: appPadding,
              right: appPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.products.type.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$formattedPrice pesos',
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.products.address,
                      style: TextStyle(
                        fontSize: 15,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: appPadding, bottom: appPadding),
            child: Text(
              'More details',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: appPadding,
              right: appPadding,
              bottom: appPadding * 4,
            ),
            child: Text(
              widget.products.description,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: black.withOpacity(0.4),
                height: 2.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
