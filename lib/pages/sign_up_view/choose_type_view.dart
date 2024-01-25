import 'package:commerce_app/pages/home_view/home_state.dart';
import 'package:commerce_app/pages/home_view/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseAge extends StatefulWidget {
  const ChooseAge({super.key});

  @override
  State<ChooseAge> createState() => _ChooseAgeState();
}

class _ChooseAgeState extends State<ChooseAge> {
  bool _expansionTile = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 26,
                vertical: MediaQuery.of(context).size.height * 0.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tell us About yourself",
                  style: GoogleFonts.inter(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const SizedBox(height: 30),
                Text(
                  "Who do you shop for ?",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                // #type clothes section
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF8E6CEF),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            "Men",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color(0xFF342F3F),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            "Women",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Text(
                  "How old are you ?",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                ExpansionTile(
                  title: const Text(
                    "Age Range",
                    style: TextStyle(color: Colors.white),
                  ),
                  onExpansionChanged: (value){
                    setState(() {
                      _expansionTile = value;
                    });
                  },
                  trailing: Icon(_expansionTile ? Icons.arrow_drop_down : Icons.arrow_drop_down_circle,color: Colors.white,),
                  backgroundColor: const Color(0xFF342F3F),
                  collapsedBackgroundColor: const Color(0xFF342F3F),
                  shape:const RoundedRectangleBorder(
                    side: BorderSide.none
                  ),
                  collapsedShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  textColor: Colors.white,
                  children:const [
                    ListTile(
                      title:Text("18",style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      title:Text("17",style: TextStyle(color: Colors.white),),
                    ),
                    ListTile(
                      title:Text("16",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            height: 80,
            width: double.maxFinite,
            color: const Color(0xFF342F3F),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const HomeState()),
                      (route) => false);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8E6CEF),
                    fixedSize: const Size(double.maxFinite, 60)),
                child: Text(
                  "Finish",
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
