import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdressView extends StatelessWidget {
  static const String route = "/address";

  const AdressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // margin: const EdgeInsets.only(left: 20),
                  height: 46,
                  width: 46,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color:  Color(0xFF342F3F),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),

                Text(
                  "Address",
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
                Text("               "),
              ],
            ),
          ),
        // const  SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Container(
                  padding:const EdgeInsets.only(left: 16,right: 18),
                  margin:const EdgeInsets.only(top: 10),
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF342F3F),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    Text("2715 Ash Dr. San Jose, South Dakota 83475",style: GoogleFonts.inter(color: Colors.white,fontSize: 16),overflow: TextOverflow.ellipsis,),
                    Text("Edit",style: GoogleFonts.inter(color: const Color(0xFF8E6CEF)),)
                  ],),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16,right: 18),
                  margin:const EdgeInsets.only(top: 10),
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xFF342F3F),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text("2715 Ash Dr. San Jose, South Dakota 83475",style: GoogleFonts.inter(color: Colors.white,fontSize: 16),overflow: TextOverflow.ellipsis,),
                    Text("Edit",style: GoogleFonts.inter(color: const Color(0xFF8E6CEF)),)
                  ],),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
