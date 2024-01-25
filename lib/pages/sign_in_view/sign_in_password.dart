import 'package:commerce_app/pages/sign_up_view/sign_up_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPassword extends StatefulWidget {
  const SignInPassword({super.key});

  @override
  State<SignInPassword> createState() => _SignInPasswordState();
}

class _SignInPasswordState extends State<SignInPassword> {
  final RegExp checkPassword =
      RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 26, vertical: MediaQuery.of(context).size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFF342F3F)),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400)),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (!checkPassword.hasMatch(password)) {
                  AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text("ERROR"),
                  );
                } else {
                  Dialog(
                    backgroundColor: Colors.red,
                  );
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
                    text: "Forgot Password?",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 14),
                  ),
                  TextSpan(
                    text: " Reset",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = (){
                     Navigator.push(context, CupertinoPageRoute(builder: (context)=> const SignUpView()));
                    }
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
