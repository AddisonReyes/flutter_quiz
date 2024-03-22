import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/styled_text.dart';
// import 'package:flutter_quiz/widgets/gradient_back.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage({super.key});

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60,),
              
          StyledText(text: 'Learn Flutter The fun way!'),
              
          SizedBox(height: 30,),
        ]
      )
    );
  }
}