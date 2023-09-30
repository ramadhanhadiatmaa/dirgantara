import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color.dart';

class ButtonWid extends StatelessWidget {
  final VoidCallback press;
  final String text;
  const ButtonWid({
    super.key,
    required this.press,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: cBlue,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
