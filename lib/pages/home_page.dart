import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_with_answer.dart';
import 'package:quiz_app2/utils/app_colors.dart';
import 'package:quiz_app2/widgets/answer_widget_iter.dart';
import 'package:quiz_app2/widgets/congtats_widgets.dart';
import 'package:quiz_app2/widgets/main_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0; 
  bool isFinished = false;
  int score = 0;
  String? selectedAnswer;

  void answerQuestion(){
    debugPrint('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: !isFinished ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                  Padding(
                      padding: const EdgeInsets.only(bottom:5),
                      child: Text(
                        questionsWithAnswers[questionIndex].question,
                        style: const TextStyle(fontSize: 20),
                      ),
                  ),
                  const Text(
                    "Answer and get points...",
                    style: TextStyle(
                      color: AppColors.babyBlue,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Column(
                        children: questionsWithAnswers[questionIndex]
                            .answers
                            .map((answer) => AnswerWidgetItem(
                                  answer: answer,
                                  selectedAnswer: selectedAnswer,
                                  onTap: () {
                                    setState(() {
                                      selectedAnswer = answer.text;
                                    });
                                  },
                                ))
                            .toList(),
                      ),
                  
                  const Spacer(),
                  MainButton(
                    text: "next", 
                    onTap: () {
                         setState(() {
                            if(selectedAnswer == questionsWithAnswers[questionIndex].correctAnswer)
                                score++;
                            if(questionIndex < questionsWithAnswers.length - 1){   
                              questionIndex++;
                              debugPrint("${questionIndex}");
                            }
                            else{
                              isFinished=true;
                            }
                        });
                      },
                  ),
               ],
              ) : CongratsWidgets(
                    score: score,
                    onTap: () {
                      setState(() {
                        questionIndex = 0;
                        isFinished = false;
                        score = 0;
                      });
                    }, 
                  ),
            ),
          ),
      ),
      ); 
  }
}