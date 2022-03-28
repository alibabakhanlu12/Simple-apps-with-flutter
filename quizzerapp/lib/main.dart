// ignore_for_file: deprecated_member_use
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'quizz_question.dart';

QuizClass quiz = QuizClass();

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {


  void checkAnswer(bool answer) {

    bool correct = quiz.getQuestionAnswer();
    setState(() {
      if(quiz.isfinished()==true){
        Alert(
          context: context,
          type: AlertType.success,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quiz.reset();
      }
     else if (correct == answer) {
        scorekeeper.add(
          const Icon(

            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scorekeeper.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      quiz.nextQuestion();
    });

  }

  List<Icon> scorekeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quiz.getQuestionText(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
