import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodie/pages/homepage/conponents/search_bar.dart';
import 'package:foodie/utils/white_icon_button.dart';

class CustomSliverAppBar  extends StatelessWidget {
  const CustomSliverAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
          top: Radius.circular(0)
        ),
      ),
      backgroundColor: Colors.white,
      leading: WhiteIconButton(
        icon: const Icon(Icons.chevron_left),
        onPressed: () {},
      ),
      actions: [
        WhiteIconButton(
          icon: const Icon(Icons.share),
          onPressed: () {},
        )  
      ],   
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Column(
          children: [
            PreferredSearchBar(
              controller: TextEditingController(),
              onSubmitted: (_) {},
              onChanged: (_) {},
            ),
            const SizedBox(height: 5)
          ],
        ),
      ),
      pinned: true,
      scrolledUnderElevation: 5,
      expandedHeight: MediaQuery.sizeOf(context).width - 100,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://i.ytimg.com/vi/NTaWfRAIVHw/hq720.jpg?sqp=-oaymwE7CK4FEIIDSFryq4qpAy0IARUAAAAAGAElAADIQj0AgKJD8AEB-AHUBoAC4AOKAgwIABABGGUgUChHMA8=&rs=AOn4CLAN8U6zPtoeWtyZIqnjclxa7vIcYw",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 96, bottom: 72
                ),
                child: getBanner(),
              )
            ),
            SizedBox(height: 10)
          ],
        )
      )
    );
  }

  Widget getBanner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), 
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5,
          sigmaY: 5,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8), 
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: bannerContent(),
          ),
        ),
      ),
    );
  }

  Widget bannerContent() {
    return const Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "THE GREEN", 
            style: TextStyle(
              height: 1,
              color: Colors.green,
              fontWeight: FontWeight.w800,
              fontSize: 16
            ),
          ),
          Text(
            "CHINA", 
            style: TextStyle(
              height: 0.8,
              color: Colors.green,
              fontWeight: FontWeight.w800,
              fontSize: 32
            )
          ), 
          SizedBox(
            width: 200,
            child: Divider()
          ),
          Text(
            "Get 40% off upto Rs. 80",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14
            )
          ),
          Text(
            "Use Code DEAL40",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14
            )
          ),
        ]
      ),
    );
  }
}