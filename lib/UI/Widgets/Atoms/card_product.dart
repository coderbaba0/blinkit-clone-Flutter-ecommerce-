import 'package:flutter/material.dart';

import 'add_to_cart_button.dart';
import '../Organisms/product_description_modal_opener.dart';

const productDetails =
    '''Amul Taaza Toned Milk (Polypack) is pasteurized with a great nutritional value. It can be consumed directly or can be used for preparing tea, coffee, sweets, khoya, curd, buttermilk, ghee etc.''';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openProductDescription(context, index);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("Assets/Products/${index + 1}.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Amul Milk",
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "300gms",
                    maxLines: 1,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "₹ 100",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      buildAddToCartButton()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
