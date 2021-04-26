
import 'package:final_project/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:final_project/components/Body.dart';

import 'AccessPage.dart';

class NewRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("New Observation"),
        ),
        body: MyCustomForm(),
      );

  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter student\'s last name to search',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextFormField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Your entry here',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: RoundedButton(
    text: "Save Entry",
    press: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) {

    return AccessPage();

    },
    ),
    );
    },
            ),
          ),
      ],
    );
  }
}