import 'package:flutter/material.dart';

class Resume extends StatelessWidget {

  final jobs = [
    
    Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text('William Dam', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24.0)),
            ],
          ),
          Row(
            children: [
              Text('damw@oregonstate.edu'),
            ],
          ),
          Row(
            children: [
              Text('https://github.com/williamdam'),
            ],
          ),
      ]),
    ),

    Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(children: [
        Row(
          children: [
            Text('Junior Software Engineer', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(alignment: Alignment.centerLeft, child: Text('ABC Company')),
            Container(alignment: Alignment.center, child: Text('2016 - Present')),
            Container(alignment: Alignment.centerRight, child: Text('Springfield, OR'))
          ]
        ),
        Wrap(
          children: [
            Text('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.'),
          ],
        )
      ]),
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: jobs,
          ),
        ),
      ),
    );
  }
}