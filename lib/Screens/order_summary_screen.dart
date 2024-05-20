import 'package:flutter/material.dart';

import 'package:ecom/app_colors.dart';
import '../UI/Widgets/Atoms/card_order_details.dart';
import '../UI/Widgets/Atoms/repeat_order_cta.dart';
import '../UI/Widgets/Organisms/card_cart_prices_detail.dart';
import '../UI/Widgets/Organisms/order_summary_screen_product_details_card.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWhiteColor,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            physics: const BouncingScrollPhysics(),
            children: const [
              OrderSummaryProductsDetails(),
              CartPriceDetailWidget(),
              OrderDetailsCard(),
              SizedBox(
                height: 100,
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: RepeatOrderContainer(),
          )
        ],
      ),
    );
  }
}
