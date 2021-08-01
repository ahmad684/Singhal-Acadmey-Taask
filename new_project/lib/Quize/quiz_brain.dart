

import 'package:internship/Quize/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(' Which type of pain generally has the shortest duration?', 'chronic pain','referred pain','obtuse pain','acute pain'),
    Question('Pain that a person feels from a body part that is no longer present is known as what type of pain?', 'preferred pain','hantom pain', 'somatic pain','visceral pain'),
    Question('What type of pain is perceived in a different area of the body than the actual stimulus is located?', 'trigger point','phantom pain','referred pain','somatic pain'),
    Question('Which of the following are methods used to reduce pain?', 'Exercise','Biofeedback Training','Psychological Intervention',' All of these'),
    Question('This type of pain comes from stimulating the receptors in the skin, muscle and/or connective tissue.', 'somatic pain','phantom pain','referred pain','somatic pain'),











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

String getOption_a(){
    return _questionBank[_questionNumber].option_a;
}String getOption_b(){
    return _questionBank[_questionNumber].option_b;
}String getOption_c(){
    return _questionBank[_questionNumber].option_c;
}String getOption_d(){
    return _questionBank[_questionNumber].option_d;
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
