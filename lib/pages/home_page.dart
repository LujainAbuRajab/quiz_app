import 'package:flutter/material.dart';
import 'package:quiz_app2/models/question_with_answer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionIndex = 0; 
  bool isFinished = false;
  int score = 0;

  void answerQuestion(){
    debugPrint('Answer Chosen');
  }

  @override
  Widget build(BuildContext context) {

    List<QuestionWithAnswer> questionsWithAnswers = [
      QuestionWithAnswer(
        question: 'What is your favorite color?',
        answers: ['Red','Blue','Green'],
        correctAnswer: 'Blue',
      ),

      QuestionWithAnswer(
        question: 'In what city were you born?', 
        answers: ['New York','Hebron','Tokyo'], 
        correctAnswer: 'Hebron',
      ),
    ];

    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              if(!isFinished) ...[
                Padding(
                    padding: const EdgeInsets.only(bottom:15),
                    child: Text(
                      questionsWithAnswers[questionIndex].question,
                      style: const TextStyle(fontSize: 32),
                    ),
                ),
                Column(
                  children: questionsWithAnswers[questionIndex].answers.map((answer) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: answerButton(
                      text: answer, 
                      onPressed: () {
                        setState(() {
                          if(answer == questionsWithAnswers[questionIndex].correctAnswer)
                              score++;
                          if(questionIndex < questionsWithAnswers.length - 1){   
                            questionIndex++;
                            debugPrint("${questionIndex}");
                          }
                          else{
                            isFinished=true;
                          }
                      });
                    },),
                  ),).toList(),
                ),
                ], 
                if(isFinished) ...[
                  const Text(
                    "You have completed the quiz.",
                    style: TextStyle(
                      color: Colors.green,
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
                ],
              ],
            ),
          ),
        ),
      ); 
  }

  Widget answerButton({required String text, required VoidCallback onPressed}){
      return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text),
      ));
    }
}