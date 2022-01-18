class Question {
  String question;
  bool reponse;
  Question(this.question, this.reponse);
}

final List<Question> listedesquestions = [
  Question("l'alter ego de Superman est Peter Parker ?", false),
  Question('Dans Star Wars, la princesse Leïa est la soeur jumelle de Luke Skywalker ?', true),
  Question('Dans la mythologie nordique Loki, le Dieu du mensonge et du feu, est le frère du Dieu Thor ?', false),
  Question('2 + 2 x 4 = 10 ?', true),
  Question("DirectX4 n'a jamais existé ?", true),
  Question("Steve Jobs a été viré d'Apple en 1986 ?", false),
  Question('La fosse océanique la plus profonde connue à ce jour est plus grande que le mont Everest (8 849 m) ?', true),
  Question('La princesse Pocahontas a vraiment existé ?', true),
  Question("C'est l'Italie qui a gagné la Coupe du monde 2014 au foot ?", false),
];