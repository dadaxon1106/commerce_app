import 'package:commerce_app/pages/sign_up_view/reset_password_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: 26, vertical: MediaQuery.of(context).size.height * 0.1),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // #back to before page
              Container(
                margin: const EdgeInsets.only(left: 8),
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF342F3F),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Create Account",
                style: GoogleFonts.inter(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              const SizedBox(height: 20),

              // # register section
              Container(
                padding: const EdgeInsets.only(left: 12),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF342F3F),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "First Name",
                      hintStyle: TextStyle(color: Colors.grey.shade500)),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(
                  left: 12,
                ),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF342F3F),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Last Name",
                      hintStyle: TextStyle(color: Colors.grey.shade500)),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(left: 12),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF342F3F),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.grey.shade500)),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.only(left: 12),
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF342F3F),
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey.shade500)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const ResetPassword()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8E6CEF),
                    fixedSize: const Size(double.maxFinite, 50)),
                child: Text(
                  "Continue",
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Forgot Password?",
                      style:
                          GoogleFonts.inter(color: Colors.white, fontSize: 14),
                    ),
                    TextSpan(
                        text: " Reset",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const ResetPassword()));
                          }),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
