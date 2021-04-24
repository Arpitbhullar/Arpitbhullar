import 'package:final_project/AccessPage.dart';
import 'package:final_project/components/rounded_button.dart';
import 'package:final_project/login/LoginPage.dart';
import 'package:flutter/material.dart';
import '../components/rounded_input.dart';
import '../components/rounded_password.dart';
import 'package:final_project/components/Background.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
String uname = "";
String psswd = "";
bool success = false;
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Username",
              onChanged: (value) {
               value = uname;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
               value = psswd;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                     // if(uname == "Jenelle" && psswd == "Chen") {
                   //     print(uname);
                        return AccessPage();
                  //    }else{ return LoginPage();}
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}