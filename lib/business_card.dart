import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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