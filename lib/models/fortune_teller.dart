//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: FortuneTeller class is the data model for predictor.dart
//////////////////////////////////////////////////////////////////////

import 'dart:math'; 

class FortuneTeller {

  //////////////////////////////////////////////////////////////////////
  // Description: Initializes Random class for random number generation.
  // Uses Dart core library, math.
  //////////////////////////////////////////////////////////////////////
  final Random random = Random();
  
  //////////////////////////////////////////////////////////////////////
  // Description: List of possible answers, for predictor view.
  //////////////////////////////////////////////////////////////////////
  List<String> answers = [
    'It is certain.',
    'Most likely.',
    'Outlook good.',
    'Yes.',
    'Ask again later.',
    'Don\'t count on it.',
    'My sources say no.',
    'Very doubtful.'
  ];

  //////////////////////////////////////////////////////////////////////
  // Description: Returns string (fortune) from List<String> answers.
  //////////////////////////////////////////////////////////////////////
  String getAnswer() => answers[random.nextInt(8)];

}