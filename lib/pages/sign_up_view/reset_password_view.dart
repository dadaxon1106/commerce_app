import 'package:commerce_app/pages/sign_up_view/send_email_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 26, vertical: MediaQuery.of(context).size.height * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 20),
            Text(
              "Forgot Password",
              style: GoogleFonts.inter(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const EmailSend()),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8E6CEF),
                  fixedSize: const Size(double.maxFinite, 50)),
              child: Text(
                "Continue",
                style: GoogleFonts.inter(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
