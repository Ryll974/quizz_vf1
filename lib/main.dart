import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            flex: 5,
            child: Text(
                "Question du Quizz"
            )),
        Expanded(
            flex: 1,
            child: TextButton(
                onPressed: () {
                  setState(() {
                  });
                  print("test Vrai");
                },
                child: Text(
                    "Vrai"
                ))),
        Expanded(
            flex: 1,
            child: TextButton(
                onPressed: () {
                  setState(() {
                  });
                  print("test Faux");
                },
                child: Text(
                    "Faux"
                ))),
      ],
    );
  }
}