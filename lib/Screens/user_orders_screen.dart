import 'package:flutter/material.dart';

import 'package:ecom/constants.dart';
import 'package:ecom/app_colors.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWhiteColor,
      appBar: AppBar(
        leadingWidth: 25,
        automaticallyImplyLeading: true,
        title: const Text("Your Orders"),
      ),
      body: ListView.builder(
        itemCount: 4,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          margin: const EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        decoration: BoxDecoration(
                          color: AppColors.primaryGreenColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: const Icon(
                          Icons.check,
                          color: AppColors.primaryGreenColor,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivered in 10 minutes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "${appCurrencySybmbol}128  · 02 Jul, 9:22 pm",
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_right_alt),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey.shade200,
                          ),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          )),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      height: 25,
                      child: Image.asset(
                        "Assets/Products/${index + 1}.png",
                        width: 50,
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  },
                  itemCount: 2,
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/order');
                },
                child: const Text(
                  'View Order',
                  style: TextStyle(
                    color: AppColors.primaryGreenColor,
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
