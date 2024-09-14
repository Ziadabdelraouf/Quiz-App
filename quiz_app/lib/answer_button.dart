import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answer, this.onpress, {super.key});
  final String answer;
  final void Function() onpress;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(129, 0, 0, 0),
      ),
      child: Text(
        answer,
        style: const TextStyle(
          color: Color.fromARGB(255, 218, 205, 254),
          fontSize: 15,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
