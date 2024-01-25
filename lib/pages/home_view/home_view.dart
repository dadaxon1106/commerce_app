import 'package:commerce_app/pages/categories_view/categories_view.dart';
import 'package:commerce_app/pages/home_view/widgets/selling_widget.dart';
import 'package:commerce_app/pages/home_view/widgets/widgets_home_view.dart';
import 'package:commerce_app/pages/notification_view/notification_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../all_selling_view/all_selling_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          children: [
            Column(
              children: [
                // #header section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage("assets/images/man_one.png"),
                    ),
                    Container(
                      height: 44,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xFF342F3F),
                      ),
                      child: const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Men",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xFF8E6CEF),
                      child: Center(
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // # search section
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 16),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFF342F3F)),
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 24,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const CategoriesView()));
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                // # categories section
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      WidgetCategories(
                          image: "assets/images/categories_one.png",
                          productName: "Hoodies"),
                      WidgetCategories(
                          image: "assets/images/categories_two.png",
                          productName: "Shorts"),
                      WidgetCategories(
                          image: "assets/images/categories_three.png",
                          productName: "Shoes"),
                      WidgetCategories(
                          image: "assets/images/categories_five.png",
                          productName: "Bag"),
                      WidgetCategories(
                          image: "assets/images/categories_sixth.png",
                          productName: "Accessories"),
                      WidgetCategories(
                          image: "assets/images/categories_one.png",
                          productName: "Hoodies"),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Selling",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const HoldiesView()));
                      },
                      child: Text(
                        "See All",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                // #top selling section
                const SizedBox(height: 20),
                SizedBox(
                  height: 290,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SellingWidget(
                        image: 'assets/images/selling_one.png',
                        productName: "Men's Harrington Jacket",
                        price: r"$148.00",
                        discountPrice: "",
                      ),
                      SellingWidget(
                        image: 'assets/images/selling_two.png',
                        productName: "Max Cirro Men's Slides",
                        price: r"$55.00",
                        discountPrice: r"$100.97",
                      ),
                      SellingWidget(
                        image: 'assets/images/selling_one.png',
                        productName: "Men's Harrington Jacket",
                        price: r"$148.00",
                        discountPrice: "",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New In",
                      style: GoogleFonts.inter(
                          color: const Color(0xFF8E6CEF),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                // #new clothes section
                const SizedBox(height: 20),
                SizedBox(
                  height: 290,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SellingWidget(
                        image: 'assets/images/selling_one.png',
                        productName: "Men's Harrington Jacket",
                        price: r"$148.00",
                        discountPrice: "",
                      ),
                      SellingWidget(
                        image: 'assets/images/selling_clothes.png',
                        productName: "Fleece Skate Hoodie",
                        price: r"$55.00",
                        discountPrice: "",
                      ),
                      SellingWidget(
                        image: 'assets/images/selling_clothes2.png',
                        productName: "Fleece Pullover Skate Hoodie",
                        price: r"$148.00",
                        discountPrice: "",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }

}
