import 'package:flutter/material.dart';
import 'question_identifier.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemdata, {super.key});
  final Map<String, Object> itemdata;
  @override
  Widget build(BuildContext context) {
    final isCorrect = itemdata['correct_ answer'] == itemdata['user_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          ((itemdata['question_index'] as int) + 1),
          isCorrect,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                (itemdata['question'] as String),
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                (itemdata['user_answer'] as String),
                style: TextStyle(
                  color: isCorrect ? Colors.green : Colors.red,
                  fontSize: 17,
                ),
              ),
              Text(
                isCorrect
                    ? "Good job!"
                    : "Correct answer: " +
                        (itemdata['correct_ answer'] as String),
                style: const TextStyle(color: Colors.green, fontSize: 17),
              ),
            ],
          ),
        )
      ],
    );
  }
}
