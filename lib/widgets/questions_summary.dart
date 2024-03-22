import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary({
    super.key,
    required this.summaryData
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      ((data['question_index'] as int) + 1).toString()
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 201, 153, 251),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            data['user_answer'] as String,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 201, 153, 251),
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 201, 153, 251),
                              fontSize: 12,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
          ).toList()
        ),
      ),
    );
  }
}