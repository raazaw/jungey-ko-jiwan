import 'package:junga_bahadur_app/answer.dart';
import 'package:junga_bahadur_app/story.dart';

class StoryBoard {
  List<Story> _storyOrder = [
    Story(
      backgroundImage: 'assets/images/image0.jpg',
      title: 'Rise of Junga Bahadur',
      choice1: 'start',
      choice2: ':)',
    ),
    Story(
        backgroundImage: 'assets/images/image1.jpg',
        title: 'Impress the king Rajendra Bikram Shah and become captain',
        choice1: 'Jump from dharhara',
        choice2: 'Accompanying with him during terai visit '),
    Story(
        backgroundImage: 'assets/images/image2.jpg',
        title: 'Create the Power vacuum',
        choice1: 'Kill the prime minster Mathabarsingh Thapa ',
        choice2: 'Kill the Crown Prince '),
    Story(
      backgroundImage: 'assets/images/image3.jpg',
      title: 'Dismantle queen power',
      choice1: 'Kill the king ',
      choice2: 'Kill Army Chief Gagan Singh ',
    ),
    Story(
      backgroundImage: 'assets/images/image4.jpg',
      title: 'Becomes Prime minster',
      choice1: 'Massacre of all the powerful person in kot parva',
      choice2: 'Kill the queen ',
    ),
    Story(
      backgroundImage: 'assets/images/image5.jpg',
      title: 'Eliminated all opposition and exiled the Queen ',
      choice1: 'Another Mass Massacre i.e Bhandarkhal Parva ',
      choice2: 'Alau massacre ',
    ),
    Story(
        backgroundImage: 'assets/images/image6.jpg',
        title: 'Junga Bahadur and his families rules for 108 years',
        choice1: 'Re-start',
        choice2: ':)'),
  ];
  List<Answer> _answerCheck = [
    Answer(choice1: true, choice2: true),
    Answer(choice1: false, choice2: true),
    Answer(choice1: true, choice2: false),
    Answer(choice1: false, choice2: true),
    Answer(choice1: true, choice2: false),
    Answer(choice1: true, choice2: false),
    Answer(choice1: false, choice2: false),
  ];

  int _stepChecker = 0;

  void logicChoice1() {
    if (_answerCheck[_stepChecker].choice1) {
      _stepChecker++;
    } else {
      _stepChecker = 0;
    }
  }

  void logicChoice2() {
    if (_answerCheck[_stepChecker].choice2) {
      _stepChecker++;
    } else {
      _stepChecker = 0;
    }
  }

  String getBackgroundImage() {
    return _storyOrder[_stepChecker].backgroundImage;
  }

  String getTitle() {
    return _storyOrder[_stepChecker].title;
  }

  String getChoice1() {
    return _storyOrder[_stepChecker].choice1;
  }

  String getChoice2() {
    return _storyOrder[_stepChecker].choice2;
  }
}
