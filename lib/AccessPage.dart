
import 'package:final_project/NewRecords.dart';
import 'package:flutter/material.dart';
import 'package:final_project/components/Body.dart';

import 'BrainGym.dart';
import 'StudentRecords.dart';
import 'components/rounded_button.dart';

class AccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
      ListTile(
      leading: Icon(Icons.book),
      title: Text('Student Records'),
    ),
            RoundedButton(
              text: "Open Records",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StudentRecords();
                    },
                  ),
                );
              },
            ),
    ListTile(
    leading: Icon(Icons.login),
    title: Text('Make an Entry'),
    ),
            RoundedButton(
              text: "Make a new entry",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NewRecords();
                    },
                  ),
                );
              },
            ),
    ListTile(
    leading: Icon(Icons.sports_football),
    title: Text('Exercises'),
    ),
            RoundedButton(
              text: "Open BrainGym",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return BrainGym();
                    },
                  ),
                );
              },
            ),
  ]
      ),
    );
  }
}