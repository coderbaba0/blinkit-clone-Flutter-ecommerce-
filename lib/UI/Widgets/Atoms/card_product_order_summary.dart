import 'package:flutter/material.dart';

import '../../../constants.dart';

class OrderSummaryProductCard extends StatelessWidget {
  const OrderSummaryProductCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey.shade200,
                  ),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                height: 80,
                child: Image.asset(
                  "Assets/Products/${index + 1}.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Amul Cheese",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "200 ml * 4",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            "${appCurrencySybmbol}128",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
