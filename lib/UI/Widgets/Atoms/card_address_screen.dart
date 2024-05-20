import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                decoration: BoxDecoration(
                    color: AppColors.greyWhiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Icon(
                  Icons.home,
                  color: Colors.deepOrangeAccent,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '123, ABC House, New Delhi',
                    maxLines: 1,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Edit',
                    style: TextStyle(
                      color: AppColors.primaryGreenColor,
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  color: Colors.black,
                  child: const Text(" "),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
