import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllNotification extends StatefulWidget {
  const AllNotification({super.key});

  @override
  State<AllNotification> createState() => _AllNotificationState();
}

class _AllNotificationState extends State<AllNotification> {
  List<String> productNames = [
    "text_notif",
    "text_notif2",
    "text_notif3",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1D182A),
        centerTitle: true,
        title: Text(
          "str_notif".tr(),
          style: const TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(top: 10),
            height: 60,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF342F3F),
            ),
            child: Row(
              children: [
                const Icon(
                  CupertinoIcons.bell,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  productNames[index].tr(),
                  style: GoogleFonts.inter(color: Colors.white),
                ),
              ],
            ),
          );
        },
        padding: const EdgeInsets.all(24),
        itemCount: 3,
      ),
    );
  }
}
