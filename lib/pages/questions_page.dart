import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_quiz/widgets/gradient_back.dart';

class QuestionsPage extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;
  
  const QuestionsPage({
    super.key, 
    required this.onSelectAnswer
  });

  @override
  State<QuestionsPage> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends State<QuestionsPage> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
                
            const SizedBox(height: 30),
      
            ...currentQuestions.getShuffledAnswers().map(
              (item){
                return AnswerButton(
                  text: item,
                  onTap: () {
                    answerQuestion(item);
                  }, 
                );
              }
            ),
          ]
        )
      ),
    );
  }
}