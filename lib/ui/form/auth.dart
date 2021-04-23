import 'package:flutter/material.dart';
import 'package:task_webapp/ui/commons/submit_button.dart';
import 'package:task_webapp/components/colors.dart';
import 'package:task_webapp/ui/commons/title.dart';

import 'widgets/login.dart';
import 'widgets/signup.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              title(),
              SizedBox(
                height: 80,
              ),
              submitButton(context, 'Login', loginPage),
              SizedBox(
                height: 20,
              ),
              _signUpButton(context),
              SizedBox(
                height: 20,
              ),
              _label()
            ],
          ),
        ),
      ),
    );
  }

  void loginPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LoginPage(),
      ),
    );
  }
}

Widget _label() {
  return Container(
      margin: EdgeInsets.only(top: 40, bottom: 20),
      child: Column(
        children: <Widget>[
          Text(
            'Quick login with Touch ID',
            style: TextStyle(color: textPrimary, fontSize: 12),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(Icons.fingerprint, size: 60, color: primaryLight),
          SizedBox(
            height: 20,
          ),
          Text(
            'Touch ID',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 15,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ));
}

Widget _signUpButton(context) {
  return InkWell(
    autofocus: true,
    focusColor: primaryLight,
    borderRadius: BorderRadius.circular(5),
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => SignUpPage(),
        ),
      );
    },
    child: Container(
      width: 300,
      padding: EdgeInsets.symmetric(vertical: 13),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: primaryLight, width: 1.5),
      ),
      child: Text(
        'Register now',
        style: TextStyle(fontSize: 16, color: textPrimary),
      ),
    ),
  );
}
