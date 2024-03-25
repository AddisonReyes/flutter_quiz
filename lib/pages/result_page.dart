import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/widgets/questions_summary.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    super.key,
    required this.chosenAnswers,
    required this.onPressed,
  });

  final void Function() onPressed;
  final List<String> chosenAnswers;

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
        'num_color': questions[i].answers[0] == chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        alignment: Alignment.centerLeft,
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 214, 177, 253),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Align(child: QuestionsSummary(summaryData: summaryData)),
            TextButton.icon(
              onPressed: onPressed,
              icon: const Icon(
                Icons.refresh,
                color: Color.fromARGB(255, 201, 153, 251),
                size: 26,
              ),
              label: Text(
                "Restart Quiz!",
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 214, 177, 253),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
