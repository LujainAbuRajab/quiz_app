import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_with_answer.dart';
import 'package:quiz_app2/utils/app_colors.dart';

class CongratsWidgets extends StatefulWidget {
  final int score;
  final VoidCallback onTap;

  const CongratsWidgets({
    super.key,
    required this.score,
    required this.onTap,
  });

  @override
  State<CongratsWidgets> createState() => _CongratsWidgetsState();
}

class _CongratsWidgetsState extends State<CongratsWidgets> {
  bool showAnswers = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 400,
          height: 250,
          decoration: BoxDecoration(
            color: AppColors.darkBlue.withOpacity(0.6),
            border: Border.all(
              color: AppColors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(3, 30, 3, 5),
                child: Text(
                  "Let's see if you have a sense of humor!",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'Your Score: ${widget.score}/${questionsWithAnswers.length}',
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 70),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.white),
                ),
                onPressed: widget.onTap,
                child: const Text(
                  '      reset Quiz     ',
                  style: TextStyle(
                    height: 3,
                    color: AppColors.avgBlue,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        TextButton(
          onPressed: () {
            setState(() {
              showAnswers = !showAnswers;
            });
          },
          child: const Text("show questions"),
        ),
        Visibility(
          visible: showAnswers,
          child: Column(
              children: questionsWithAnswers.map((question) {
            return Column(
              children: [
                Text(
                  question.question,
                  style: const TextStyle(fontSize: 16, color: Colors.black87),
                ),
                Text("correct answer: ${question.correctAnswer}"),
                const Divider(color: Colors.black12),
              ],
            );
          }).toList()),
        ),
      ],
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//                 children: [

//                   const Text(
//                       "Let's see if you have a sense of humor!",
//                       style: TextStyle(
//                         color: Color(0xffaad1d3) ,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w600,
//                       )
//                     ),
//                     const SizedBox(height: 20,),
//                     Text(
//                       'Your Score: $score/${questionsWithAnswers.length}',
//                       style: const TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     ),
//                     const SizedBox(height: 10,),
//                     TextButton(
//                       onPressed: onTap,
//                       child: const Text('reset Quiz'),),
//                 ],
//               );
//   }
// }
