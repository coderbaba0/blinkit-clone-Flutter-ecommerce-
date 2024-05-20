import 'package:flutter/material.dart';

class ErrorScreem extends StatefulWidget {
  const ErrorScreem({super.key});

  @override
  State<ErrorScreem> createState() => _ErrorScreemState();
}

class _ErrorScreemState extends State<ErrorScreem> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Error'),
      ),
    );
  }
}
