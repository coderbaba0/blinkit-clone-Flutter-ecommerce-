import 'package:flutter/material.dart';

import '../Organisms/product_description_modal_opener.dart';
import '../Atoms/add_to_cart_button.dart';

class ProductCardForList extends StatelessWidget {
  const ProductCardForList({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        openProductDescription(context, index);
      },
      child: Container(
        height: 300,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "Assets/Products/${index + 1}.png",
                  width: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Amul Milk",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "300gms",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Row(
              children: [
                Text(
                  "₹ 100",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "₹ 120",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            buildAddToCartButton()
          ],
        ),
      ),
    );
  }
}
