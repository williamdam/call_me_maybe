//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: Predictor class is the view for the question page
//////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import '../models/fortune_teller.dart';

//////////////////////////////////////////////////////////////////////
// Description: Predictor class returns widget state
//////////////////////////////////////////////////////////////////////
class Predictor extends StatefulWidget {
  @override
  _PredictorState createState() => _PredictorState();
}

//////////////////////////////////////////////////////////////////////
// Description: Returns widget with new state onTap.  Calls on
// FortuneTeller class to generate new fortune string, using
// getAnswer method.
//////////////////////////////////////////////////////////////////////
class _PredictorState extends State<Predictor> {

  String fortune = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { setState( () { fortune = FortuneTeller().getAnswer();});},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: predictions(context, fortune)
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////
// Description: Fortune teller prompt and answer
// Args: BuildContext, Fortune to be displayed
// Reeturns: List of Text Widgets
//////////////////////////////////////////////////////////////////////
List<Widget> predictions(BuildContext context, String fortune) {
  return [
    Text('Call Me...Maybe?', style: Theme.of(context).textTheme.headline4),
    SizedBox(height: 50),
    Text('Ask a question...tap for the answer.', style: TextStyle(fontSize: 20.0)),
    SizedBox(height: 50),
    Text(fortune, style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold)),
    SizedBox(height: 50)
  ]; 
} 
