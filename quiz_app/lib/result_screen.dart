import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions/questions.dart';
import 'summary_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restart, this.finish, this.finalanswers, {super.key});
  final void Function() restart;
  final void Function() finish;
  final List<String> finalanswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < finalanswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].question,
          'correct_ answer': questions[i].answers[0],
          'user_answer': finalanswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final totalQuestions = questions.length;
    final summary = getSummaryData();
    final correctAnswered = summary.where((data) {
      return data['correct_ answer'] == data['user_answer'];
    }).length;
    // the previous could be also written as arrow function
    // final correctAnswered = summary
    //     .where(
    //       (data) => data['correct_ answer'] == data['user_answer'],
    //     )
    //     .length;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "You answered $correctAnswered questions correct out of $totalQuestions correctly!",
          style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(176, 255, 255, 255),
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
        SummaryData(
          summary,
        ),
        const SizedBox(
          height: 40,
        ),
        ElevatedButton.icon(
          onPressed: previouslySelected.length > 42 ? finish : restart,
          icon: previouslySelected.length > 42
              ? Icon(Icons.task_alt_rounded)
              : Icon(Icons.replay),
          label: previouslySelected.length > 42
              ? Text(
                  "Finish quiz",
                )
              : Text("Restart quiz"),
        ),
      ],
    );
  }
}
