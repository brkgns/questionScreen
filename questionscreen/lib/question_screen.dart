import 'dart:js';

import 'package:flutter/material.dart';
import 'package:questionscreen/data/question.dart';
import 'package:questionscreen/sonuc_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key}) : super(key: key);

  @override
  _QuestionState createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  int questionIndex = 0;
  String question = questions[0].question;
  List<String> answers = [
    questions[0].answers[0],
    questions[0].answers[1],
    questions[0].answers[2],
    questions[0].answers[3],
    questions[0].answers[4],

  ];

  void nextQuestion() {
    setState(() {
      if (questionIndex < questions.length - 1) {
        questionIndex++;
        question = questions[questionIndex].question;
        answers = [
    questions[questionIndex].answers[0],
    questions[questionIndex].answers[1],
    questions[questionIndex].answers[2],
    questions[questionIndex].answers[3],
    questions[questionIndex].answers[4],

  ];
      }else if (questionIndex == questions.length - 1) {
        questionIndex++;
        question = "Tebrikler";
        answers = ["Sonuçları Göster"];

      }else {
        questionIndex = questionIndex - 1;
        Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: ((context) => const Sonuc_Screen())));
      }
    },);

  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              margin: const EdgeInsets.all(40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(question),
                    ...answers.map((answer) {
                      return ElevatedButton(
                          onPressed: nextQuestion,
                          child: Text(
                            answer,
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.white),
                          ));
                    })
                  ]))
        ]),
      ),
    );
  }
}



