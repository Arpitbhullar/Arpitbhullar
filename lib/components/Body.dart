import 'package:final_project/login/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:final_project/HomePage.dart';
import 'package:final_project/components/rounded_button.dart';
import 'package:final_project/components/constants.dart';

import 'Background.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome Teacher!, please login to continue:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
           RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}