import 'package:flutter/material.dart';

import 'package:ecom/app_colors.dart';
import '../UI/Widgets/Organisms/bottom_cart_container.dart';
import '../UI/Widgets/Organisms/products_screen_grid.dart';
import '../UI/Widgets/Organisms/products_screen_sub_category_list.dart';
import '../UI/custom_search_delegate.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWhiteColor,
      appBar: AppBar(
        leadingWidth: 25,
        automaticallyImplyLeading: true,
        title: Text(categoryName),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => showSearch(
              context: context,
              delegate: ProductsSearchDelegate(),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height,
                  child: buildSubCategory(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: MediaQuery.of(context).size.height,
                  child: buildProductsGrid(),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          const BottomStickyContainer()
        ],
      ),
    );
  }
}
