import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class BottomStickyContainer extends StatelessWidget {
  const BottomStickyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
          decoration: BoxDecoration(
            color: AppColors.greyWhiteColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '25 ITEM',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/cart');
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  backgroundColor: AppColors.primaryGreenColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50.0, vertical: 5),
                ),
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
