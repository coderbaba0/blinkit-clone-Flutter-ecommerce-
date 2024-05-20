import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class CartScreenPaymentContainer extends StatelessWidget {
  const CartScreenPaymentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(
                Icons.payment,
                color: Colors.orangeAccent,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Cash on Delivery",
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/order/confirm');
            },
            style: TextButton.styleFrom(
              backgroundColor: AppColors.primaryGreenColor,
              foregroundColor: AppColors.greyWhiteColor,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
            ),
            child: const Text("Place Order"),
          )
        ],
      ),
    );
  }
}
