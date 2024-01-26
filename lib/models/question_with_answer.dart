class QuestionWithAnswer {
  final String question;
  final List<Answer> answers;
  final String correctAnswer;

  QuestionWithAnswer({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });
}

class Answer {
  final String text;
  //final IconData icon;

  Answer({required this.text});
}

List<QuestionWithAnswer> questionsWithAnswers = [
  QuestionWithAnswer(
      question: "What does a computer do when it's cold?",
      answers: [
        Answer(text: "Shivers and starts running Windows in safe mode"),
        Answer(text: "Puts on its Java jacket"),
        Answer(text: "Sends a byte to keep warm"),
        Answer(text: " Curls up in a blanket of cache"),
      ],
      correctAnswer: "Shivers and starts running Windows in safe mode"),
  QuestionWithAnswer(
      question: "Why did the computer go to therapy?",
      answers: [
        Answer(text: "It had too many unresolved issues"),
        Answer(text: "It couldn't find its cache of emotions"),
        Answer(text: "It was suffering from a bad case of cookies"),
        Answer(text: "It needed to express its hexadecimal feelings"),
      ],
      correctAnswer: "It needed to express its hexadecimal feelings"),
];
