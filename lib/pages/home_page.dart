import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/gradient_back.dart';
import 'package:flutter_quiz/widgets/lined_button.dart';
import 'package:flutter_quiz/widgets/styled_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const GradienBack(),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/img/quiz-logo.png',
                width: 260,
              ),
              
              const SizedBox(height: 60,),
              
              const StyledText(text: 'Learn Flutter The fun way!'),
              
              const SizedBox(height: 30,),

              const LinedButton()
            ],
          )
        ]
      ),
    );
  }
}