import 'package:flutter/material.dart';

class ApplyCouponOnCartCard extends StatelessWidget {
  const ApplyCouponOnCartCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coupons',
        );
      },
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
                  Icons.settings,
                  color: Color.fromARGB(255, 0, 67, 183),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Use Coupons',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
