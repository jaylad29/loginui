import 'package:flutter/material.dart';
import 'package:loginui/screens/forgot_password/component/body.dart';
import 'package:loginui/screens/signin/sign_in_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
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
      body: ForgotPasswordBody(),
    );
  }
}
