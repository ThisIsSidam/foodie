import 'package:flutter/material.dart';
import 'package:foodie/pages/homepage/conponents/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(), 
          scrollingElements(),
          scrollingElements()
        ]    
      ),

    );
  }

  Widget scrollingElements() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 400,
            color: Colors.orange[300]
          ),
        )
      )
    );
  }
}
