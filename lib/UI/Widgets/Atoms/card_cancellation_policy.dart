import 'package:flutter/material.dart';

class CancellationPolicyCard extends StatelessWidget {
  const CancellationPolicyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cancellation Policy',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            'Orders cannot be cancelled once packed for delivery. In case of unexpected delays, a refund will be provided, If applicable',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
