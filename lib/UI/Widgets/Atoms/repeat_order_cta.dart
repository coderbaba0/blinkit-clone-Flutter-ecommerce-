import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class RepeatOrderContainer extends StatelessWidget {
  const RepeatOrderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed('/cart');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryGreenColor,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('Repeat Order '),
          ),
        ],
      ),
    );
  }
}
