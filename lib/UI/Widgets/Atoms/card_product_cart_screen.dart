import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 223, 222, 222)),
                ),
                child: Image.asset(
                  "Assets/Products/${index + 1}.png",
                  height: 70,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amul Milk Toned',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('300gms'),
                  Text(
                    '₹ 100',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 30,
            width: 105,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            decoration: BoxDecoration(
              color: AppColors.primaryGreenColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const Text(
                  "1",
                  style: TextStyle(color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 10,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
