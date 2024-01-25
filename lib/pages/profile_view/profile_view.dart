
import 'package:commerce_app/pages/profile_view/pages_profile/adress_view.dart';
import 'package:commerce_app/pages/profile_view/pages_profile/widgets/profile_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/man_one.png"),
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 16, top: 12, right: 16),
                height: 110,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF342F3F),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gilbert Jones",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Glbertjones001@gmail.com",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "121-224-7890",
                          style: GoogleFonts.inter(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      "Edit",
                      style: GoogleFonts.inter(
                          color: const Color(0xFF8E6CEF),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const DetailProfile(detailName: "Address", page: AdressView()),
              const DetailProfile(detailName: "WishList", page: AdressView()),
              const DetailProfile(detailName: "Payment", page: AdressView()),
              const DetailProfile(detailName: "Help", page: AdressView()),
              const DetailProfile(detailName: "Support", page: AdressView()),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Out",
                    style: GoogleFonts.inter(
                        color: Colors.red,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}
