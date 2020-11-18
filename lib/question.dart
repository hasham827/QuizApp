class Question {
  String questionText;
  List<String> options;
  int correct;

  Question(String q,List<String> options_,int correct_) {
    questionText = q;
    options = options_;
    correct = correct_;
  }
}
