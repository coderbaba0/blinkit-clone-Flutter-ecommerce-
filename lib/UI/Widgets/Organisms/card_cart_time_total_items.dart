import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class CartTimeandTotalItemCard extends StatelessWidget {
  const CartTimeandTotalItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: const Row(
        children: [
          Icon(
            Icons.lock_clock,
            color: AppColors.primaryGreenColor,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery in 28 minutes',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('7 Items')
            ],
          ),
        ],
      ),
    );
  }
}
