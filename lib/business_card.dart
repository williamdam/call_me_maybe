//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: BusinessCard class is the view for the Business Card
// Page, which displays the user's information.
//////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

//////////////////////////////////////////////////////////////////////
// Description: BusinessCard class returns column of user profile info.
//////////////////////////////////////////////////////////////////////
class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: businessCardProfile()
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////
// Description: Business card info
// Args: None
// Returns: List of Row widgets to display
//////////////////////////////////////////////////////////////////////
List<Widget> businessCardProfile() {
  return [
    SizedBox(height: 30.0),
    profilePic(imageURL: 'assets/images/william-dam.jpg'),
    SizedBox(height: 18.0),
    profileInfo(info: 'William Dam', isName: true),
    SizedBox(height: 18.0),
    profileInfo(info: 'Software Developer', isName: false),
    SizedBox(height: 18.0),
    phoneNumber(number: 5555555555),
    SizedBox(height: 18.0),
    webInfo(github: 'github.com/williamdam', email: 'damw@oregonstate.edu')
  ];
}

//////////////////////////////////////////////////////////////////////
// Description: User's profile picture
// Args: Image location url
// Returns: Row widget of user's picture
//////////////////////////////////////////////////////////////////////
Widget profilePic({String imageURL}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        child: Image(image: AssetImage('assets/images/william-dam.jpg')),
        width: 100,
        height: 100
      )
    ],
  );
}

//////////////////////////////////////////////////////////////////////
// Description: Profile text in business card
// Args: Text to display, Bool if text is user's name
// Returns: Row widget of formatted text
//////////////////////////////////////////////////////////////////////
Widget profileInfo({String info, bool isName}) {
  
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        info, 
        style: TextStyle(
          fontWeight: isName ? FontWeight.w500 : FontWeight.normal, 
          fontSize: isName ? 30.0 : 18.0,
          color: Colors.teal
        )
      )
    ]
  );
}

//////////////////////////////////////////////////////////////////////
// Description: User's phone number
// Args: Integer with no spaces
// Returns: Row widget of formatted number and GestureDetector to 
// launch sms.
//////////////////////////////////////////////////////////////////////
Widget phoneNumber({int number}) {

  String smsLaunchURL = 'sms:' + number.toString();
  String formattedNumber;
  formattedNumber = number.toString().substring(0, 3);
  formattedNumber += ' ' + number.toString().substring(3, 6);
  formattedNumber += ' ' + number.toString().substring(6, 10);

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () => launch(smsLaunchURL), 
        child: Text(formattedNumber, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)))
    ],
  );
}

//////////////////////////////////////////////////////////////////////
// Description: Github and Email Address
// Args: Github url and email address
// Returns: Row widget of links with GestureDetector to launch url
// on tap. 
//////////////////////////////////////////////////////////////////////
Widget webInfo({String github, String email}) {

  String githubURL = 'https://' + github;
  String emailURL = 'mailto:' + email;

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(onTap: () => launch(githubURL), child: Text(github)),
      SizedBox(width: 30.0),
      GestureDetector(onTap: () => launch(emailURL), child: Text(email)),
    ],
  );
}