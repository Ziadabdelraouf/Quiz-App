import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/finish.png",
          width: 200,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Congratulations! You finished all questions!",
          style: GoogleFonts.lato(
            fontSize: 23,
            color: const Color.fromARGB(164, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
