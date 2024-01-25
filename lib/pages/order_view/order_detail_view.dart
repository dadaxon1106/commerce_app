import 'package:commerce_app/pages/order_view/widgets/widgets_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderDetailView extends StatefulWidget {
  static const String route = "/order_detail";
  const OrderDetailView({super.key});

  @override
  State<OrderDetailView> createState() => _OrderDetailViewState();
}

class _OrderDetailViewState extends State<OrderDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 26),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: const Color(0xFF342F3F),
                      radius: 24,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 34),
                  Text(
                    "Order #456678",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  const OrderWidget(
                    backgroundColor: Color(0xFFEFEAF5),
                    typeText: "Delivered",
                    textColor: Colors.grey,
                    dayText: '28 May',
                  ),
                  const SizedBox(height: 30),
                  const OrderWidget(
                    backgroundColor: Color(0xFF8E6CEF),
                    typeText: "Shipped",
                    textColor: Colors.white,
                    dayText: "28 May",
                  ),
                  const SizedBox(height: 30),
                  const OrderWidget(
                    backgroundColor: Color(0xFF8E6CEF),
                    typeText: "Order Confirmed ",
                    textColor: Colors.white,
                    dayText: "28 May",
                  ),
                  const SizedBox(height: 30),
                  const OrderWidget(
                    backgroundColor: Color(0xFF8E6CEF),
                    typeText: "Order Placed",
                    textColor: Colors.white,
                    dayText: "28 May",
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Order Items",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF342F3F),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/icons/list_icon.svg"),
                            const SizedBox(width: 16),
                            Text(
                              '4 items',
                              style: GoogleFonts.inter(
                                  color: Colors.white, fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "View All",
                          style: GoogleFonts.inter(
                              color: const Color(0xFF8E6CEF), fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Shipping Details",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, right: 20),
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF342F3F),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "2715 Ash Dr. San Jose, South Dakota 83475",
                          style: GoogleFonts.inter(
                              color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "121-224-7890",
                          style: GoogleFonts.inter(
                              color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
