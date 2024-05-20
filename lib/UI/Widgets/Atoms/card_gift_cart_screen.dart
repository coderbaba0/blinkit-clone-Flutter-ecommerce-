import 'package:flutter/material.dart';

class OrderGiftCard extends StatelessWidget {
  const OrderGiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/cart/gift"),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.card_giftcard,
                  color: Colors.yellowAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ordering For Someone else',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'Add a message to be sent as an SMS with your gift.',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        fontSize: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Icon(Icons.arrow_right)
          ],
        ),
      ),
    );
  }
}
