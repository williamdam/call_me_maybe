//////////////////////////////////////////////////////////////////////
// Author: William Dam
// Date: 02-14-2021
// Description: Resume class is the view for the resume page, which
// displays contact information and list of work history.
//////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

//////////////////////////////////////////////////////////////////////
// Description: Resume class returns scrollable column of work history.
//////////////////////////////////////////////////////////////////////
class Resume extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: workHistory(),
          ),
        ),
      ),
    );
  }

}

//////////////////////////////////////////////////////////////////////
// Description: User's contact info block.  Uses GestureDetector 
// and url_launcher to make links clickable.
// Args: Full Name, Email, Github URL
// Returns: Column of Row widgets with padding
//////////////////////////////////////////////////////////////////////
Widget aboutMe({String name, String email, String github}) {

  final emailURL = 'mailto:' + email;
  final githubURL = 'https://' + github;

  return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(name, style: GoogleFonts.merriweather(textStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 30.0, color: Colors.teal))),
            ],
          ),
          Row(
            children: [
              GestureDetector(onTap: () => launch(emailURL), child: Text(email)),
            ],
          ),
          Row(
            children: [
              GestureDetector(onTap: () => launch(githubURL), child: Text(github)),
            ],
          ),
      ]),
    );
}

//////////////////////////////////////////////////////////////////////
// Description: Job experience block
// Args: Job Title, Company Name, Employment Dates, Location, Description
// Returns: Column of Row widgets with Padding
//////////////////////////////////////////////////////////////////////
Widget job({String jobTitle, String companyName, String dates, String city, String description}) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(children: [
        Row(
          children: [
            Text(jobTitle, style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(alignment: Alignment.centerLeft, child: Text(companyName)),
            Container(alignment: Alignment.center, child: Text(dates)),
            Container(alignment: Alignment.centerRight, child: Text(city))
          ]
        ),
        Wrap(
          children: [
            Text(description),
          ],
        )
      ]),
    );
}

//////////////////////////////////////////////////////////////////////
// Description: List of user info and entire work history
// Args: None
// Returns: List of Row widgets
//////////////////////////////////////////////////////////////////////
List<Widget> workHistory() {
  return [
    SizedBox(height: 20.0),
    aboutMe(
      name: 'William Dam',
      email: 'damw@oregonstate.edu',
      github: 'github.com/williamdam'
    ),
    job(
      jobTitle: 'Software Engineer II',
      companyName: 'SpaceX',
      dates: '2021 - Present',
      city: 'Glendale, CA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Senior Software Engineer',
      companyName: 'Lockheed Martin',
      dates: '2020 - 2021',
      city: 'Portland, OR',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Embedded Software Engineer',
      companyName: 'Boeing',
      dates: '2018 - 2020',
      city: 'Mukilteo, WA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Software Engineer I',
      companyName: 'Facebook',
      dates: '2016 - 2018',
      city: 'Menlo Park, CA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Junior Software Engineer',
      companyName: 'Intel',
      dates: '2015 - 2016',
      city: 'Beaverton, OR',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Junior Software Engineer',
      companyName: 'Uber',
      dates: '2014 - 2015',
      city: 'San Francisco, CA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Software Engineer Intern',
      companyName: 'Microsoft',
      dates: '2013 - 2014',
      city: 'Seattle, WA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Software Development Intern',
      companyName: 'Amazon',
      dates: '2012 - 2013',
      city: 'Seattle, WA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    ),
    job(
      jobTitle: 'Webmaster',
      companyName: 'ABC Company',
      dates: '2010 - 2012',
      city: 'Irvine, CA',
      description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit,' 
      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim' 
      'ad minim veniam.'
    )
    
  ];
}