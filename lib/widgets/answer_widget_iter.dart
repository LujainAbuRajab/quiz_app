import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_with_answer.dart';
import 'package:quiz_app2/utils/app_colors.dart';

class AnswerWidgetItem extends StatelessWidget {
  final Answer answer;
  final String? selectedAnswer;
  final VoidCallback onTap;
  const AnswerWidgetItem({
    super.key, 
    required this.answer, 
    this.selectedAnswer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: onTap,
                        child: Container(
                          decoration: BoxDecoration(
                            color: selectedAnswer == answer.text
                                ? AppColors.darkBlue.withOpacity(0.6) 
                                : AppColors.white,
                            border: Border.all(
                              width: 1,
                              color: AppColors.avgBlue.withOpacity(0.3),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ) ,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                //selectedAnswer == answer? Icon(Icon.arrow_right_sharp : Icons.arrow_drop_down_sharp);
                                //const Icon(selectedAnswer == answer? Icon.arrow_right_sharp :Icons.arrow_drop_down_sharp),
                                Icon(
                                  Icons.arrow_right_rounded,
                                  size: 40,
                                  color: selectedAnswer == answer.text
                                      ? AppColors.white 
                                      : AppColors.avgBlue ,
                                ),
                                const SizedBox(width: 8,),
                                Text(
                                  answer.text,
                                  style: TextStyle(
                                    color: selectedAnswer == answer.text
                                        ? AppColors.white 
                                        : AppColors.avgBlue,
                                    fontWeight: selectedAnswer == answer.text
                                        ? FontWeight.w800 
                                        : FontWeight.w500 ,
                                  ),
                                ),
                              ],
                            ),
                          )
                        )
                      ));
  }
}