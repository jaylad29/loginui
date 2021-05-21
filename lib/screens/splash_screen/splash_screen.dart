import 'package:flutter/material.dart';
import 'package:loginui/screens/splash_screen/component/body.dart';
import 'package:loginui/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SplasBody(),
    );
  }
}
