import 'package:flutter/material.dart';
import 'package:loginui/screens/signin/component/body.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
