import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:foodie/pages/homepage/conponents/app_bar.dart';
import 'package:foodie/pages/homepage/conponents/card.dart';

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
          _buildSection("Recommended", List.generate(7, (i) => i)),
          _buildSection("Second", List.generate(8, (i) => i)),
          _buildSection("Third", List.generate(7, (i) => i))
        ]    
      ),

    );
  }

  Widget _buildSection(String title, List<int> items) {
    return SliverStickyHeader(
      header: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 40,
        color: Colors.green[100],
        padding: const EdgeInsets.all(8),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium
        ) 
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ProductCard(productId: items[index]);
          },
          childCount: items.length
        ),
      ),
    );
  }
}
