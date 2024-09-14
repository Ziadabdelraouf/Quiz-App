import 'package:flutter/material.dart';
import 'package:quiz_app/questions/questions.dart';
import 'start_quiz.dart';
import 'questions_screen.dart';
import 'result_screen.dart';
import 'finish _screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> selectedAnswer = [];

  @override
  void initState() {
    activeScreen =
    StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(
      () {
        selectedAnswer = [];
        selectQuestions();
        activeScreen =  QuestionsScreen(answerSaved);
      },
    );
  }

  void finishQuiz() {
    setState(
      () {
        activeScreen = FinishScreen();
      },
    );
  }

  void answerSaved(String answer) {
    selectedAnswer.add(answer);
    if (selectedAnswer.length == questions.length) {
      setState(
        () {
          activeScreen = ResultScreen(switchScreen, finishQuiz, selectedAnswer);
        },
      );
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.deepPurple,
                Colors.purple,
              ],
            ),
          ),
          child: Center(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
