import 'package:flutter/material.dart';
import 'package:telegram_ui/screens/custom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(scaffoldBackgroundColor: telegramBlue),
      debugShowCheckedModeBanner: false,
      home: CustomNav(),
    );
  }
}
