import 'question.dart';

class QuizzIA {
  int _NumeroQuestion = 0;
  bool _fin = false;
  List<Question> _questions = [
    Question(q: "l'alter ego de Superman est Peter Parker ?", r: false),
    Question(
        q: "Dans Star Wars, la princesse Leïa est la soeur jumelle de Luke Skywalker ?",
        r: true),
    Question(
        q: "Dans la mythologie nordique Loki, le Dieu du mensonge et du feu, est le frère du Dieu Thor ?",
        r: false),
    Question(q: "2 + 2 x 4 = 10 ?", r: true),
    Question(q: "DirectX4 n'a jamais existé ?", r: true),
    Question(q: "Steve Jobs a été viré d'Apple en 1986 ?", r: false),
    Question(
        q: "La fosse océanique la plus profonde connue à ce jour est plus grande que le mont Everest (8 849 m) ?",
        r: true),
    Question(q: "La princesse Pocahontas a vraiment existé ?", r: true),
    Question(q: "C'est l'Italie qui a gagné la Coupe du monde 2014 au foot ?",
        r: false),
  ];
  void nextQuestion() {
    if (_NumeroQuestion < _questions.length - 1) {_NumeroQuestion++;} else {_fin = true;}
  }

  String getQuestionText() {
    return _questions[_NumeroQuestion].question;
  }

  bool getAnswer() {
    return _questions[_NumeroQuestion].reponse;
  }

  int getQuestionsLenght() {
    return _questions.length;
  }

  bool getFinished() {
    return _fin;
  }

}