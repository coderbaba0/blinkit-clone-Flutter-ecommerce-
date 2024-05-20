import 'package:flutter/material.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Orders details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Order ID',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Text(
            '123456789',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Payment Method',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Text(
            'Cash on Delivery',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Delivery Address',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Text(
            '123, Lorem Ipsum, Dolor Sit Amet, Consectetur Adipiscing Elit',
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Order Places',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Text(
            'Placed on Sun, 02 Jul\'23, 9:22 PM',
            maxLines: 1,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
