import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Quizz(),
      ),
    ),
  );
}

class Quizz extends StatefulWidget {
  const Quizz({Key? key}) : super(key: key);
  @override
  _Quizz createState() => _Quizz();
}

class Question {
  String question;
  bool reponse;
  Question(this.question, this.reponse);
}

class _Quizz extends State<Quizz> {
  List<Icon> suiviScore = [];
  final List<Question> listedesquestions = [
    Question('Question 1 ?', true),
    Question('Question 2 ?', true),
    Question('Question 3 ?', true),
    Question('Question 4 ?', true),
    Question('Question 5 ?', true),
    Question('Question 6 ?', true),
    Question('Question 7 ?', true),
    Question('Question 8 ?', true),
    Question('Question 9 ?', true),
  ];
  int NumeroQuestion = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  listedesquestions[NumeroQuestion].question,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: () {
                    bool bonneReponse =
                        listedesquestions[NumeroQuestion].reponse;
                    setState(() {
                      if (suiviScore.length != listedesquestions.length) {
                        if (bonneReponse == true) {
                          suiviScore
                              .add(Icon(Icons.check, color: Colors.green));
                        } else {
                          suiviScore.add(Icon(Icons.close, color: Colors.red));
                        }
                      }
                      if (NumeroQuestion < listedesquestions.length - 1)
                        NumeroQuestion++;
                    });
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.green, // Background Color
                  ),
                  child: Text(
                    "Vrai",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                  onPressed: () {
                    bool bonneReponse =
                        listedesquestions[NumeroQuestion].reponse;
                    setState(() {
                      if (suiviScore.length != listedesquestions.length) {
                        if (bonneReponse == false) {
                          suiviScore
                              .add(Icon(Icons.check, color: Colors.green));
                        } else {
                          suiviScore.add(Icon(Icons.close, color: Colors.red));
                        }
                      }
                      if (NumeroQuestion < listedesquestions.length - 1)
                        NumeroQuestion++;
                    });
                  },
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.red, // Background Color
                  ),
                  child: Text(
                    "Faux",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
            )),
        Row(
          children: suiviScore,
        ),
      ],
    );
  }
}
