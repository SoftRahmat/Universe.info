import 'package:explore_universe/test/question_page.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'The Sun accounts for 99.86% of the mass in the solar system.', true),
    Question('One day the Sun will consume the Moon.', false),
    Question('The Moon always shows Earth the same face.', true),
    Question('Jupiter has unique cloud features.', true),
    Question('The great Red spot is a huge storm on Jupiter.', true),
    Question('Mercury has a molten core.', true),
    Question('The Moon\'s surface is actually white.', false),
    Question('Mercury is only the second hottest planet.', true),
    Question('A year on Mercury is just 180 days long.', false),
    Question('Saturn has 62 moons.', true),
    Question('Saturn\'s rings could be old, or they could be young.', true),
    Question('Uranus is the coldest planet in the Solar System.', true),
    Question(
        'Uranus makes one trip around the Sun every 84 Earth years.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
