import 'package:commerce_app/pages/sign_up_view/choose_type_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailSend extends StatefulWidget {
  const EmailSend({super.key});

  @override
  State<EmailSend> createState() => _EmailSendState();
}

class _EmailSendState extends State<EmailSend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/email.png", height: 120),
            const SizedBox(height: 16),
            Text(
              "We Sent you an Email to reset your password.",
              style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context, CupertinoPageRoute(builder: (context)=> const ChooseAge()), (route) => false);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8E6CEF),
              fixedSize:const Size(200, 60)),
              child:  Text("Return to Login",style: GoogleFonts.inter(color: Colors.white,fontSize: 18),),
            ),
          ],
        ),
      ),
    );
  }
}
