import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Image.asset(
          //   'assets/images/quizicon.png',
          //   width: 300,
          //   color: const Color.fromARGB(20, 255, 255, 255),
          // ),   preferable way to transparent image. below is not a currect way to do.

          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quizicon.png',
              width: 300,
            ),
          ),

          const SizedBox(height: 60),
          Text(
            'Learn Flutter with the fun way!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 226, 158, 220),
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.quiz),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
