import 'package:flutter/material.dart';

import '../../../app_colors.dart';

Widget customListTile(
    {required IconData icon,
    required String title,
    bool? isColorFul = false,
    Function? callback}) {
  return InkWell(
    splashColor: AppColors.greyWhiteColor,
    onTap: () {
      callback!();
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.greyWhiteColor,
                child: Icon(
                  icon,
                  color: isColorFul! ? Colors.blueAccent : Colors.black45,
                  size: 15,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ),
        ],
      ),
    ),
  );
}
