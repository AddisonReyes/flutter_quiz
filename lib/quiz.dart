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
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = HomePage(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 108, 8, 148),
              Color.fromARGB(255, 58, 1, 85)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
        ),
        child: activeScreen,
      ),
    );
  }
}