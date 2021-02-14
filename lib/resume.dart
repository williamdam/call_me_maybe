import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  final jobs = [
    SizedBox(height: 20.0),
    aboutMe(
      name: 'William Dam',
      email: 'damw@oregonstate.edu',
      githubURL: 'https://github.com/williamdam'
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
    )
    
    
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
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

Widget aboutMe({String name, String email, String githubURL}) {
  return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(name, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 24.0)),
            ],
          ),
          Row(
            children: [
              Text(email),
            ],
          ),
          Row(
            children: [
              Text(githubURL),
            ],
          ),
      ]),
    );
}