import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedContainer extends StatelessWidget {
  final double borderRadius;
  final Color color;
  final String textContainer;

  const RoundedContainer({
    super.key,
    required this.borderRadius,
    required this.color, required this.textContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(textContainer, style: GoogleFonts.mynerve(fontSize: 20, color: appBlueColor, fontWeight: FontWeight.bold)),
    );
  }
}