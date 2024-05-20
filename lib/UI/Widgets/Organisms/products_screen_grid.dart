import 'package:flutter/material.dart';

import '../Atoms/card_product.dart';

Widget buildProductsGrid() {
  return CustomScrollView(
    shrinkWrap: true,
    physics: const BouncingScrollPhysics(),
    slivers: [
      SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: 0.62,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            if (index == 6) {
              return const SizedBox(
                height: 50,
              );
            }

            return ProductCard(
              index: index,
            );
          },
          childCount: 6 + 1,
        ),
      )
    ],
  );
}
