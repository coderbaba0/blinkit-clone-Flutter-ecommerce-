import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class AddNewAddressCard extends StatelessWidget {
  const AddNewAddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: const Row(
        children: [
          Icon(
            Icons.add,
            color: AppColors.primaryGreenColor,
          ),
          Text(
            'Add new address',
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
