import 'package:flutter/material.dart';

class GradienBack extends StatelessWidget {
  const GradienBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}