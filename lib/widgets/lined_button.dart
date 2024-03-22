// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter_quiz/widgets/styled_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LinedButton extends StatefulWidget {
  var onPressed;
  String text;

  LinedButton({
    super.key,
    required this.onPressed,
    required this.text
  });

  @override
  State<LinedButton> createState() => _LinedButtonState();
}

class _LinedButtonState extends State<LinedButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: widget.onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        )),
      ), 
      icon: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
      ),
      label: StyledText(
        text: widget.text
      ),
    );
  }
}