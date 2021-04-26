
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
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
          children: <Widget>[
      ListTile(
      leading: Icon(Icons.book),
      title: Text('Student Records'),
    ),
            RoundedButton(
              text: "Access Student Directory",
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
    title: Text('Make a new observation'),
    ),
            RoundedButton(
              text: "Click to make an observation",
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