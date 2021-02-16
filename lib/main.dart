//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: Main entry point for application
//////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'controller/app.dart';

//////////////////////////////////////////////////////////////////////
// Description: Main function for the program.  Enable landscape and
// portrait orientation.  
//////////////////////////////////////////////////////////////////////
void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
  ]);

  runApp(App());
}

