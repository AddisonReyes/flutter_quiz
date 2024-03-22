import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onTap;
  final String text;

  const AnswerButton({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10
        ),
        backgroundColor: const Color.fromARGB(255, 47, 0, 85),
        foregroundColor: const Color.fromARGB(255, 201, 153, 251),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(40)
        )
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
      )
    );
  }
}