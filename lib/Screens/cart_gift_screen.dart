import 'package:flutter/material.dart';

import 'package:ecom/app_colors.dart';
import 'package:ecom/UI/Widgets/Atoms/custom_button.dart';

class CartGiftScreen extends StatefulWidget {
  const CartGiftScreen({super.key});

  @override
  State<CartGiftScreen> createState() => _CartGiftScreenState();
}

class _CartGiftScreenState extends State<CartGiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("Assets/Images/gift.jpg"),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Add gifting Information",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    OrderAsGiftStepCard(
                      title: "Choose Address",
                      subtitle:
                          "Choose the address you want to send the gift to",
                    ),
                    OrderAsGiftStepCard(
                      title: "Choose Contact Number",
                      subtitle:
                          "We will send the tracking details to this number",
                    ),
                    OrderAsGiftStepCard(
                      title: "Add a gift message",
                      subtitle: "Add a personal message to your gift",
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: customTextButton(
              context,
              callback: () => Navigator.pop(context),
              title: "Continue",
              color: AppColors.primaryGreenColor,
            ),
          ),
        ],
      ),
    );
  }
}

class OrderAsGiftStepCard extends StatelessWidget {
  const OrderAsGiftStepCard({super.key, this.title = "", this.subtitle = ""});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        child: Row(
          children: [
            const Icon(
              Icons.add,
              color: Colors.black87,
              size: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
