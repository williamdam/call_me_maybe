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
  // Source: https://en.wikipedia.org/wiki/Magic_8-Ball
  //////////////////////////////////////////////////////////////////////
  List<String> answers = [
    'It is certain.',
    'It is decidedly so.',
    'Without a doubt.',
    'Yes - definitely.',
    'You may rely on it.',
    'As I see it, yes.',
    'Most likely.',
    'Outlook good.',
    'Yes.',
    'Signs point to yes.',
    'Reply hazy, try again.',
    'Ask again later.',
    'Better not tell you now.',
    'Cannot predict now.',
    'Concentrate and ask again.',
    'Don\'t count on it.',
    'My reply is no.',
    'My sources say no.',
    'Outlook not so good.',
    'Very doubtful.'
  ];

  //////////////////////////////////////////////////////////////////////
  // Description: Returns string (fortune) from List<String> answers.
  //////////////////////////////////////////////////////////////////////
  String getAnswer() => answers[random.nextInt(20)];

}