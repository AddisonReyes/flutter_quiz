// import 'package:flutter_quiz/widgets/gradient_back.dart';
// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter_quiz/widgets/lined_button.dart';
import 'package:flutter_quiz/widgets/styled_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final void Function() onPressed;

  const HomePage(this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/quiz-logo.png',
            color: const Color.fromARGB(150, 255, 255, 255),
            width: 260,
          ),

          const SizedBox(height: 60,),
              
          const StyledText(text: 'Learn Flutter The fun way!'),
              
          const SizedBox(height: 30,),

          LinedButton(
            onPressed: onPressed,
            text: 'Start Quiz',
          )
        ],
      ),
    );
  }
}