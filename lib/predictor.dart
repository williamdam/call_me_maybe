import 'package:flutter/material.dart';
import 'models/fortune_teller.dart';

class Predictor extends StatefulWidget {
  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: predictions(context)
    );
  }
}

List<Widget> predictions(BuildContext context) {
  return [
    Text('Call Me...Maybe?', style: Theme.of(context).textTheme.headline4),
    SizedBox(height: 50),
    Text('Ask a question...tap for the answer.', style: TextStyle(fontSize: 20.0)),
    SizedBox(height: 50),
    Text(FortuneTeller().getAnswer(), style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold)),
    SizedBox(height: 50)
  ]; 
} 
