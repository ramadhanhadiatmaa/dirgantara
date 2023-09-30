import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWid extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight? weight;
  final TextAlign? align;
  const TextWid({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    this.weight,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.lato(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
