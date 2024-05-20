import 'package:flutter/material.dart';

import '../Atoms/card_product_list.dart';

class CatgorywithProducts extends StatelessWidget {
  const CatgorywithProducts({super.key, this.title = "Milk and Breads"});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ProductCardForList(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
