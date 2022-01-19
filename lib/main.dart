import 'package:flutter/material.dart';
import 'quizzIA.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizzIA qIA = QuizzIA();

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

class _Quizz extends State<Quizz> {

  List<Icon> suiviScore = [];

  void CheckAnswer(bool vrai_faux) {
    bool bonneReponse = qIA.getAnswer();
    setState(() {
      if (bonneReponse == vrai_faux) {
        suiviScore.add(Icon(Icons.check, color: Colors.green));
      } else {
        suiviScore.add(Icon(Icons.close, color: Colors.red));
      }
      qIA.nextQuestion();
      if (qIA.getFinished() == true) {
        Alert(context: context, title: "Bravo !", desc: "Le Quizz est terminé").show();
      }
    });
  }

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
                  qIA.getQuestionText(),
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
                    CheckAnswer(true);
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
                    CheckAnswer(false);
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
