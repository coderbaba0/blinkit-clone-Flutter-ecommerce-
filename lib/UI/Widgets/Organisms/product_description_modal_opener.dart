import 'package:flutter/material.dart';

import '../Atoms/add_to_cart_button.dart';
import '../Atoms/card_product.dart';

Future<dynamic> openProductDescription(BuildContext context, int index) {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    enableDrag: true,
    builder: (context1) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Image.asset("Assets/Products/${index + 1}.png")),
                    Column(
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
                    const Text(
                      'Products Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Text(productDetails),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
