import 'package:flutter/material.dart';

import '../../../app_colors.dart';

const subCategory = [
  "Milk",
  "Bread & Pav",
  "Butter & Cheese",
  "Paneer & Curd",
  "Eggs",
  "Oats",
  "Flakes & Cereals",
  "Vermicelli",
  "Peanut Butter",
  "Condensed Milk"
];

Widget buildSubCategory() {
  return ListView.builder(
    shrinkWrap: true,
    physics: const BouncingScrollPhysics(),
    itemBuilder: (BuildContext context, int index) {
      if (index == subCategory.length) {
        return const SizedBox(
          height: 50,
        );
      }

      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: index == 1
              ? const Border(
                  right: BorderSide(
                    color: AppColors.primaryGreenColor,
                    width: 3,
                  ),
                )
              : null,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.greyWhiteColor,
              child: Image.asset(
                "Assets/SubCategories/${index + 1}.png",
                height: 45,
                fit: BoxFit.fitWidth,
              ),
            ),
            Text(
              subCategory[index],
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    },
    itemCount: subCategory.length + 1,
  );
}
