import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Labels extends StatelessWidget {
  const Labels({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: GoogleFonts.inter(
          fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
    );
  }
}
