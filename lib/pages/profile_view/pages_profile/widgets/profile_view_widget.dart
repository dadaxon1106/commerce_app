import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class DetailProfile extends StatelessWidget {
  final String detailName;
  final Widget page;

  const DetailProfile({super.key, required this.detailName, required this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF342F3F),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            detailName,
            style: GoogleFonts.inter(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context)=> page));
            },
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
