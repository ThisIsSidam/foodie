import 'package:flutter/material.dart';
import 'package:foodie/pages/homepage/homepage.dart';
import 'package:foodie/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      title: "Foodie",
      home: const HomePage(),
    );
  }
}