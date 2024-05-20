import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class CartScreenAddressContainer extends StatelessWidget {
  const CartScreenAddressContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.home_filled,
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
                      "Delivering to Home",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Floor 4, The Star Hotel, New Delhi",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/user/address');
              },
              child: const Text(
                "Change",
                style: TextStyle(
                  color: AppColors.primaryGreenColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
