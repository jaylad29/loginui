import 'package:flutter/material.dart';
import 'package:loginui/screens/signin/sign_in_screen.dart';
import 'package:loginui/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterLoginUI',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: SignInScreen(),
    );
  }
}
