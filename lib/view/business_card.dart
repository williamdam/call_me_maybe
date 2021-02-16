//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: BusinessCard class is the view for the Business Card
// Page, which displays the user's information.
//////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';


//////////////////////////////////////////////////////////////////////
// Description: BusinessCard class returns column of user profile info.
//////////////////////////////////////////////////////////////////////
class BusinessCard extends StatelessWidget {

  final imagePath = 'assets/images/william-dam.jpg';
  final name = 'William Dam';
  final title = 'Software Developer';
  final phone = 2345545422;
  final github = 'github.com/williamdam';
  final email = 'damw@oregonstate.edu';
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FittedBox(
          alignment: Alignment.topCenter,
          child: Column(
            children: businessCardProfile(
              imagePath: imagePath, 
              name: name, 
              title: title, 
              phone: phone, 
              github: github, 
              email: email
            )
          ),
        ),
      ),
    );
  }

}

double paddingBottom(BuildContext context) {
  if(MediaQuery.of(context).orientation == Orientation.landscape) {
    return MediaQuery.of(context).size.height * 0.1;
  } else {
    return MediaQuery.of(context).size.height * 0.5;
  }
}

//////////////////////////////////////////////////////////////////////
// Description: Business card info
// Args: Image path, name, title, phone, github url, email
// Returns: List of Row widgets to display
//////////////////////////////////////////////////////////////////////
List<Widget> businessCardProfile({String imagePath, String name, String title, int phone, String github, String email}) {
  return [
    SizedBox(height: 10),
    SizedBox(height: 100, width: 100, child: profilePic(imageURL: imagePath)),
    SizedBox(height: 50, child: profileInfo(info: name, isName: true)),
    SizedBox(height: 30, child: profileInfo(info: title, isName: false)),
    SizedBox(height: 30, child: phoneNumber(number: phone)),
    SizedBox(height: 30, child: webInfo(github: github, email: email)),

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
        child: Image(image: AssetImage(imageURL)),
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
        style: GoogleFonts.bebasNeue(textStyle: TextStyle(
          fontWeight: isName ? FontWeight.w500 : FontWeight.normal, 
          fontSize: isName ? 30.0 : 18.0,
          color: Colors.red.shade600
        ))
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

