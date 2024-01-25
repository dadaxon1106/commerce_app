import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({super.key});

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List<String> images = [
    "assets/images/categories_one.png",
    "assets/images/categories_two.png",
    "assets/images/categories_three.png",
    "assets/images/categories_five.png",
    "assets/images/categories_five.png",
    "assets/images/categories_five.png"
  ];
  List<String> productNames = [
    "Hoodies",
    "Accessories",
    "Shorts",
    "Shoes",
    "Bags",
    "Expensive Bags"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  backgroundColor: Color(0xFF342F3F),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Shop by Categories",
                style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(4),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFF342F3F),
                      ),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage(images[index]),
                        ),
                        title: Text(
                          productNames[index],
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
