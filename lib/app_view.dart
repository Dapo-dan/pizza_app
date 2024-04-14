import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pizza App",
      // theme: const AppTheme().themeData,
      // home: const SplashScreen(),
    );
  }
}
