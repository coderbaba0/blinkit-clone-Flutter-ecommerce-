import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:ecom/route_generator.dart';
import 'package:ecom/app_theme.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("Assets/Images/gift.jpg"), context);

    return MaterialApp(
      title: 'Blinkit_Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
      theme: AppTheme.appTHeme,
    );
  }
}
