import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "images/image2.png",
          // width: 428,
          // height: 584,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, top: 12),
          child: SizedBox(
            width: 279,
            height: 72,
            child: Text(
              "Lorem Ipsum is simply dummy",
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: SizedBox(
            width: 318,
            height: 48,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: GoogleFonts.poppins(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
