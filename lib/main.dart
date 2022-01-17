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
  List<Icon> listedesicones = [];
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
                  "Question du Quizz",
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
                    setState(() {});
                    listedesicones.add( Icon(Icons.check, color: Colors.green));
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
                    setState(() {});
                    listedesicones.add( Icon(Icons.close, color: Colors.red));
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
          children: listedesicones,
        ),
      ],
    );
  }
}
