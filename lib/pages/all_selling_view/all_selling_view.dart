import 'package:commerce_app/pages/all_selling_view/widgets/widgets_all_selling.dart';
import 'package:commerce_app/pages/home_view/widgets/selling_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HoldiesView extends StatefulWidget {
  const HoldiesView({super.key});

  @override
  State<HoldiesView> createState() => _HoldiesViewState();
}

class _HoldiesViewState extends State<HoldiesView> {
  List<String> productNames = [
    "Men's Fleece Pullover Hoodie",
    "Fleece Pullover Skate Hoodie",
    "Fleece Skate Hoodie",
    "Men's Ice-Dye Pullover Hoodie",
    "Max Cirro Men's Slides",
    "EMen's Coaches Jacket",
    "EMen's Coaches Jacket",
  ];
  List<String> images = [
    "assets/images/hoddies_one.png",
    "assets/images/hoddies_two.png",
    "assets/images/hoddies_three.png",
    "assets/images/hoddies_four.png",
    "assets/images/selling_clothes.png",
    "assets/images/selling_clothes2.png"
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
                "Hoodies(240)",
                style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(height: 24),
              Expanded(
                  child: GridView.builder(
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                          childAspectRatio: 0.5),
                      itemBuilder: (context, index) {
                        return  WidgetSelling(
                          productImage: images[index],
                          productName: productNames[index],
                          productPrice: r"$148.00",
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}
