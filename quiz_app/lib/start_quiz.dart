import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.start, {super.key});
  final void Function() start;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(151, 255, 255, 255),
        ),
        const SizedBox(
          height: 100,
        ),
        const Text("Learn the fun way!",
            style: TextStyle(
              color: Color.fromARGB(151, 255, 255, 255),
            )),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          onPressed: () {
            start();
          },
          icon: const Icon(
            color: Color.fromARGB(186, 255, 255, 255),
            Icons.arrow_right_alt,
          ),
          label: const Text(
            "start",
            style: TextStyle(
              color: Color.fromARGB(151, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}
