import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Flutter is an __________ mobile application development framework created by Google.',["Open-source","Both","None of the above","Shareware"],1),
    Question('Flutter is used to develop applications for __________ and __________.',["fav","aso","ewlo","Dello"],1),
    Question('The first version of Flutter was known as codename __________ and ran on the Android operating system.',["Cloud","Sky","Rain","None"],2),
    Question('Flutter apps are written in the __________ language and make use of many of the language more advanced features.',["C","Java","Dart","None"],3),
    Question('Some cats are actually allergic to humans',["Android","iOS","None","Both"],3),
    Question('Due to App Store restrictions on dynamic code execution, Flutter apps use __________ compilation on iOS.',["ahead-of-time","ahed-of-code","Java","None"],1),
    Question('Flutter is used to develop applications for __________ and __________.',["fav","aso","ewlo","Dello"],1),
    Question('The first version of Flutter was known as codename __________ and ran on the Android operating system.',["Cloud","Sky","Rain","None"],2),
    Question('Flutter apps are written in the __________ language and make use of many of the language more advanced features.',["C","Java","Dart"],3),
  ];
  //Create Next Question Function
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }
List<String> get_options(){
    return _questionBank[_questionNumber].options;
}
  int getCorrectAnswer() {
    return _questionBank[_questionNumber].correct;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

//  void nextQuestion() {
//    if (_questionNumber < _questionBank.length - 1) {
//      _questionNumber++;
//    }
//  }
//
//  String getQuestionText() {
//    return _questionBank[_questionNumber].questionText;
//  }
//
//  bool getCorrectAnswer() {
//    return _questionBank[_questionNumber].questionAnswer;
//  }

//TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

//TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

//TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
//}
