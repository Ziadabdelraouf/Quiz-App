import 'package:flutter/material.dart';
import 'package:quiz_app/questions/questions.dart';
import 'answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelect, {super.key});

  final void Function(String answer) onSelect;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionindex = 0;
  void answerQuestion(String selected) {
    widget.onSelect(selected);

    setState(
      () {
        
        questionindex++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionindex];
    return Container(
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.question,
            style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 221, 171, 255),
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getShuffled().map(
            (answer) {
              return AnswerButton(
                answer,
                () {
                  answerQuestion(answer);
                },
              );
            },
          )
        ],
      ),
    );
  }
}
