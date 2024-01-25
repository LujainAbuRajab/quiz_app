import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_with_answer.dart';
import 'package:quiz_app2/utils/app_colors.dart';

class CongratsWidgets extends StatelessWidget {
  final int score;
  final VoidCallback onTap;
  const CongratsWidgets({super.key, required this.score, required this.onTap });

@override
  Widget build(BuildContext context) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [                  
                  Container(
                    width: 400,
                    height: 250,
                    decoration: BoxDecoration(
                      color: AppColors.darkBlue.withOpacity(0.6),
                      border: Border.all(
                        color: AppColors.white,width: 1,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child:Column(
                      children: [
                       const Padding(
                         padding: EdgeInsets.fromLTRB(3,30,3,5),
                         child:  Text(
                          "Let's see if you have a sense of humor!",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          )
                                               ),
                       ),
                  
                    const SizedBox(height:15,),
                    Text(
                      'Your Score: $score/${questionsWithAnswers.length}',
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 80,),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith((states) => (AppColors.white)),
                      ),
                      onPressed: onTap,
                      child: Text(
                        '      reset Quiz     ',
                        style: TextStyle(
                          height: 3,
                          
                          color: AppColors.avgBlue,
                        ),
                      ),),
                      ],
                    ),
                    
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