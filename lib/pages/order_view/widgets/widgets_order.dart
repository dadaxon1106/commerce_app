import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderWidget extends StatelessWidget {
  final Color backgroundColor;
  final String typeText;
  final Color textColor;
  final String dayText;
  const OrderWidget(
      {super.key,
      required this.backgroundColor,
      required this.typeText,
      required this.textColor,
      required this.dayText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: backgroundColor,
              radius: 24,
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Text(
              typeText,
              style: GoogleFonts.inter(fontSize: 18, color: textColor),
            ),
          ],
        ),
        Text(
          dayText,
          style: GoogleFonts.inter(fontSize: 18, color: textColor),
        )
      ],
    );
  }
}
