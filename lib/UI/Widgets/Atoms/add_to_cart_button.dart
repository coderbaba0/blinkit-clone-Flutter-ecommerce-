import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../app_colors.dart';

Widget buildAddToCartButton() {
  return InkWell(
    splashColor: AppColors.primaryGreenColor,
    onTap: () {
      Fluttertoast.showToast(
        msg: 'Product Added To Cart',
        backgroundColor: Colors.white,
        textColor: Colors.black,
        gravity: ToastGravity.BOTTOM,
      );
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
      decoration: BoxDecoration(
          color: AppColors.primaryGreenColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1,
            color: AppColors.primaryGreenColor,
          )),
      child: const Text(
        "Add",
        style: TextStyle(
          fontSize: 15,
          color: AppColors.primaryGreenColor,
        ),
      ),
    ),
  );
}



// TextButton(
//     onPressed: () {
//       print("NAVIGATING TO PRODUCT DESCRIPTION");
//     },
//     style: TextButton.styleFrom(
//       padding: const EdgeInsets.symmetric(
//         vertical: 0,
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         side: const BorderSide(
//           color: AppColors.primaryGreenColor,
//           width: 1,
//         ),
//       ),
//       foregroundColor: AppColors.primaryGreenColor,
//       backgroundColor: AppColors.primaryGreenColor.withOpacity(0.10),
//     ),
//   ,
//   )