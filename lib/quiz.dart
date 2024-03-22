import 'package:flutter/material.dart';
import 'package:flutter_quiz/pages/home_page.dart';
import 'package:flutter_quiz/pages/questions_page.dart';
// import 'package:flutter_quiz/widgets/gradient_back.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'home-page';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-page';
    });
  }

  void chooseAnswers(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions-page') {
      screenWidget = const QuestionsPage();
    }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 58, 1, 85),
              Color.fromARGB(255, 108, 8, 148),
              Color.fromARGB(255, 110, 4, 102)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: screenWidget,
      ),
    );
  }
}