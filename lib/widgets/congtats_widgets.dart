import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_with_answer.dart';

class CongratsWidgets extends StatelessWidget {
  final int score;
  final VoidCallback onTap;
  const CongratsWidgets({super.key, required this.score, required this.onTap });

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  const Text(
                      "You have completed the quiz.",
                      style: TextStyle(
                        color: Color(0xffaad1d3) ,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )
                    ),
                    const SizedBox(height: 20,),
                    Text(
                      'Your Score: ${score}/${questionsWithAnswers.length}',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10,),
                    TextButton(
                      onPressed: onTap,
                      child: const Text('reset Quiz'),),
                ],
              );
  }
}