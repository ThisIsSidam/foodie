import 'package:flutter/material.dart';
import 'package:foodie/pages/homepage/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Foodie",
      home: HomePage(),
    );
  }
}