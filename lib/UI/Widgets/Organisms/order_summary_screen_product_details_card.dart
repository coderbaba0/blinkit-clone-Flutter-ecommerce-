import 'package:flutter/material.dart';

import 'package:ecom/app_colors.dart';
import '../Atoms/card_product_order_summary.dart';

class OrderSummaryProductsDetails extends StatelessWidget {
  const OrderSummaryProductsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        shrinkWrap: true,
        children: [
          const Text(
            'Order Summary',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("/order/invoice");
            },
            child: const Text(
              'Download Invoice',
              style: TextStyle(
                color: AppColors.primaryGreenColor,
                fontSize: 16,
              ),
            ),
          ),
          const Text(
            'Arrived at 9:29 pm',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          const Text(
            '2 items in this order',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return OrderSummaryProductCard(index: index);
            },
          ),
        ],
      ),
    );
  }
}
