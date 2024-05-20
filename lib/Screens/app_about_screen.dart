import 'package:flutter/material.dart';

import '../constants.dart';

class AppAboutScreen extends StatelessWidget {
  const AppAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About us',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'v15.30.2',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w200,
              ),
            ),
            Text(introParagraph)
          ],
        ),
      ),
    );
  }
}
