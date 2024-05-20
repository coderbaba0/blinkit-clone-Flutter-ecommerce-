import 'package:flutter/material.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      toolbarHeight: kToolbarHeight + 10,
      actions: [
        IconButton(
          icon: Container(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.person,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/profile');
          },
        ),
      ],
      flexibleSpace: _buildAddress(context),
    );
  }

  Widget _buildAddress(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'DELIVERY IN',
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            '25 Minutes',
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            'HOME- Floor 9, Delhi',
            maxLines: 1,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          // Add more Text widgets as needed
        ],
      ),
    );
  }
}
