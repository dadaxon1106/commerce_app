import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetCategories extends StatelessWidget {
  final String image;
  final String productName;

  const WidgetCategories(
      {super.key, required this.image, required this.productName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 36,
          ),
           const SizedBox(height: 10),
          Text(productName,style: GoogleFonts.inter(color: Colors.white,fontSize: 18),)
        ],
      ),
    );
  }
}
