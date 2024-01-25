import 'package:commerce_app/pages/sign_in_view/sign_in_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  String _value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 26,
                vertical: MediaQuery.of(context).size.height * 0.1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // #header section
                Text(
                  "Sign in",
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                // #text field
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFF342F3F)),
                  child:  TextField(
                    style:const TextStyle(color: Colors.white),
                    onChanged: (value){
                      setState(() {
                        _value=value;
                      });
                    },
                    decoration:const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email Address",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(!_value.isEmpty){
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> const SignInPassword()));
                    }
                    else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Invalid email")));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8E6CEF),
                      fixedSize: const Size(double.maxFinite, 60)),
                  child: Text(
                    "Continue",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an Account ?",
                        style: GoogleFonts.inter(
                            color: Colors.white, fontSize: 14),
                      ),
                      TextSpan(
                        text: "Create One",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                makeButton(iconImage: "assets/icons/apple_icon.svg", iconName: "Continue With Apple"),
             const   SizedBox(height: 14),
            Container(
              padding:const EdgeInsets.all(16),
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:const Color(0xFF342F3F),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                const  Icon(Icons.telegram,size: 24,color: Colors.blue,),
                  const  SizedBox(width: 50,),
                  Text("Continue With Telegramm",style: GoogleFonts.inter(color: Colors.white, fontSize: 20),),
                ],
              ),
            ),
                const   SizedBox(height: 14),
                Container(
                  padding:const EdgeInsets.all(16),
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color:const Color(0xFF342F3F),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const  Icon(Icons.facebook,size: 24,color: Colors.blue,),
                      const  SizedBox(width: 50,),
                      Text("Continue With Facebook",style: GoogleFonts.inter(color: Colors.white, fontSize: 20),),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget makeButton({required String iconImage, required String iconName}) {
    return Container(
      padding:const EdgeInsets.all(16),
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color:const Color(0xFF342F3F),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(iconImage),
        const  SizedBox(width: 50,),
          Text(iconName,style: GoogleFonts.inter(color: Colors.white, fontSize: 20),),
        ],
      ),
    );
  }
}
