import 'package:commerce_app/pages/order_view/order_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  bool _isActive = true;
  bool _isActive2 = false;
  bool _isActive3 = false;
  bool _isActive4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D182A),
        centerTitle: true,
        title: const Text(
          "Orders",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  makeCategory(orderName: "Processing", isActive: _isActive),
                  makeCategory(orderName: "Shipped", isActive: _isActive2),
                  makeCategory(orderName: "Delivered", isActive: _isActive3),
                  makeCategory(orderName: "Returned", isActive: _isActive4),
                  makeCategory(orderName: "Canceled", isActive: false),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
                  children: [
                    checkOrder(orderName: "455678", orderCount: "4 items"),
                    checkOrder(orderName: "454569", orderCount: "2 items"),
                    checkOrder(orderName: "454809", orderCount: "1 items"),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget makeCategory({required String orderName, bool isActive = true}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.only(right: 10),
        width: isActive ? 120 : 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: isActive ? const Color(0xFF8E6CEF) : const Color(0xFF342F3F),
        ),
        child: Center(
            child:
            Text(orderName, style: const TextStyle(color: Colors.white))),
      ),
    );
  }

  Widget checkOrder({required String orderName, required String orderCount}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 12, top: 14, right: 12),
      height: 80,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF342F3F),
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/icons/list_icon.svg", height: 40,),
              const SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order #$orderName", style: GoogleFonts.inter(
                      fontSize: 18, color: Colors.white),),
                  const SizedBox(height: 8,),
                  Text(orderCount, style: GoogleFonts.inter(
                      fontSize: 16, color: Colors.grey),),
                ],
              ),
            ],
          ),
          IconButton(icon: const Icon(
            Icons.arrow_forward_ios, color: Colors.white, size: 24,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const OrderDetailView();
              }));
            },)
        ],
      ),
    );
  }
}
