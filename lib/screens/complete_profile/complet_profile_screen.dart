import 'package:flutter/material.dart';
import 'package:loginui/screens/complete_profile/component/completeprofilebody.dart';
import 'package:loginui/screens/signup/component/signup_form.dart';

class CompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUP"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SignUpForm();
              }));
            }),
      ),
      body: CompletProfileBody(),
    );
  }
}
