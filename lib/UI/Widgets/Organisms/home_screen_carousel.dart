import 'package:flutter/material.dart';

class HomeScreenCarousel extends StatelessWidget {
  const HomeScreenCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 220,
        child: PageView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage('Assets/cimgs/${index + 1}.jpg'),
                  fit: BoxFit.fitWidth,
                ),
              ),

            );
          },
        ),
      ),
    );
  }
}
