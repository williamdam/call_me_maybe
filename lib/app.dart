//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: App class is the controller for the entire application.
//////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'business_card.dart';
import 'resume.dart';
import 'predictor.dart';

//////////////////////////////////////////////////////////////////////
// Description: App class returns MaterialApp of entire application
//////////////////////////////////////////////////////////////////////
class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MainTabController(),
    );
  }
}

//////////////////////////////////////////////////////////////////////
// Description: Tab controller provides navigation icons and displays
// views for each tab.
//////////////////////////////////////////////////////////////////////
class MainTabController extends StatelessWidget {

  static const tabs = [
    Icon(
      Icons.face,
      color: Colors.white,
      size: 24.0,
      semanticLabel: 'Business Card',
    ),
    Icon(
      Icons.description,
      color: Colors.white,
      size: 24.0,
      semanticLabel: 'Resume',
    ),
    Icon(
      Icons.help_outline,
      color: Colors.white,
      size: 24.0,
      semanticLabel: 'Predictor',
    )
  ];

  final screens = [BusinessCard(), Resume(), Predictor()];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Call Me Maybe')),
          bottom: TabBar(
            tabs: tabs,
            labelPadding: EdgeInsets.only(bottom: 10.0),
          )
        ),
        body: TabBarView(children: screens)
        )
    );
  }
}