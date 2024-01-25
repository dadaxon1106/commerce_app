import 'package:flutter/material.dart';

class SellingWidget extends StatelessWidget {
  final String image;
  final String productName;
  final String price;
  final String discountPrice;

  const SellingWidget(
      {super.key,
      required this.image,
      required this.price,
      required this.discountPrice,
      required this.productName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF342F3F)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // padding:const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ),
          // const  SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      discountPrice,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                          decorationColor: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
