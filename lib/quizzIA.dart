import 'question.dart';

class QuizzIA {
  List<Question> questions = [
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
  getQuestionText() {

  }
}