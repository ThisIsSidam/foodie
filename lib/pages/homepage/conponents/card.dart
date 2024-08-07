import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final int productId;
  const ProductCard({
    super.key,
    required this.productId
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

  late String title;
  late String description;
  late double price;
  late double rating;
  late int noOfReviews;

  @override
  void initState() {
    fetchProductDetails();
    super.initState();
  }

  void fetchProductDetails() {
    title = "Bubut Ayam Pak Yono";
    description = "Porridge, Rice, Chicken";
    price = 10;
    rating = 4.9;
    noOfReviews = 400;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          getImage(),
          const SizedBox(width: 20,),
          Expanded(child: getInfoSection())
        ],
      ),
    );
  }

  Widget getImage() {
    return SizedBox(
      height: 140,
      width: 135,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC_Y8tTIkzC3G1khc5UpGLyNhdVvz59zmGCW1Xfd9T2rTH29Q8f_7SOl4yuKmJKP8xK7I",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget getInfoSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          description,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        getPriceAndAddButtonRow(),
        getRatingAndReviewsRow()
        
      ],
    );
  }

  Widget getPriceAndAddButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.motorcycle_rounded,
              color: Colors.green,
            ),
            Text(
              " Rp ${price.toStringAsFixed(3)}",
              style: Theme.of(context).textTheme.titleSmall
            )
          ],
        ),
        getAddButton()
      ],
    );

  }

  Widget getAddButton() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red[100],
        border: Border.all(color: Colors.red, width: 1)
      ),
      child: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () {},
      )
    );
  }

  Widget getRatingAndReviewsRow() {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.orange,),
        Text(
          " ${rating.toStringAsPrecision(2)} • $noOfReviews+ ratings",
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}