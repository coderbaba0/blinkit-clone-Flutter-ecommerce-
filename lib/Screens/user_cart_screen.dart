import 'package:flutter/material.dart';

import '../UI/Widgets/Atoms/card_cancellation_policy.dart';
import '../UI/Widgets/Atoms/card_gift_cart_screen.dart';
import '../UI/Widgets/Atoms/card_product_cart_screen.dart';
import '../UI/Widgets/Organisms/card_apply_coupon.dart';
import '../UI/Widgets/Organisms/card_cart_prices_detail.dart';
import '../UI/Widgets/Organisms/card_cart_time_total_items.dart';
import '../UI/Widgets/Organisms/cart_screen_address_container.dart';
import '../UI/Widgets/Organisms/cart_screen_payment_container.dart';
import '../app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyWhiteColor,
      appBar: AppBar(
        leadingWidth: 25,
        automaticallyImplyLeading: true,
        title: const Text("Checkout"),
      ),
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            children: [
              // Container for Time and Total Items
              const CartTimeandTotalItemCard(), // Container ENDS
              // Products Container STARTS
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CartProductCard(
                      index: index,
                    );
                  },
                ),
              ), // Products Container ENDS

              // Container for Add Coupons
              const ApplyCouponOnCartCard(),
              //Container For Add Coupons Ends
              const CartPriceDetailWidget(),
              const OrderGiftCard(),
              const CancellationPolicyCard(),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
          const Positioned(
            bottom: 0,
            child: Column(
              children: [
                CartScreenAddressContainer(),
                CartScreenPaymentContainer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
