import 'package:commerce_app/pages/notification_view/accepted_notif.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D182A),
        centerTitle: true,
        title:const Text("Notification",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w700),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/icon_bell.png",
              height: 120,
            ),
            const SizedBox(height: 10),
            const Text(
              " No Notification yet",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const AllNotification();
                }));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8E6CEF),
                  fixedSize: const Size(200, 60)),
              child: Text(
                "Explore Categories",
                style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
