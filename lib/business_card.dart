import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image(image: AssetImage('assets/images/william-dam.jpg')),
                    width: 100,
                    height: 100
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('William Dam', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text('Software Developer', style: TextStyle(fontSize: 16.0)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(onTap: () => launch('sms:5555555555'), child: Text('555 555 5555')),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                    Text('github.com/williamdam'),

                    Text('wdam@google.com'),
                  
                ],
              ),
            )
          ]
        ),
      ),
    );
  }
}