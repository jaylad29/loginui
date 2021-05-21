import 'package:flutter/material.dart';
import 'package:loginui/screens/signin/sign_in_screen.dart';
import 'package:loginui/screens/signup/component/body.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SignInScreen();
              }));
            }),
      ),
      body: SignUpBody(),
    );
  }
}
