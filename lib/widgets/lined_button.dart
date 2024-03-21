import 'package:flutter/material.dart';
import 'package:flutter_quiz/widgets/styled_text.dart';

class LinedButton extends StatefulWidget {
  const LinedButton({super.key});

  @override
  State<LinedButton> createState() => _LinedButtonState();
}

class _LinedButtonState extends State<LinedButton> {
  void onPressed() {

  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        )),
      ), 
      child: const StyledText(
        text: 'Start Quiz'
      ),
    );
  }
}