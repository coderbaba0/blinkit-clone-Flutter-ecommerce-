import 'package:flutter/material.dart';

import '../Atoms/category_widget.dart';

class HomeScreenCateogoryWidget extends StatelessWidget {
  const HomeScreenCateogoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        childAspectRatio: 0.65,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CategoryWidget(index: index);
        },
        childCount: 20,
      ),
    );
  }
}
