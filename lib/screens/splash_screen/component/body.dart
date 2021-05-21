import 'package:flutter/material.dart';
import 'package:loginui/component/default_Button.dart';
import 'package:loginui/constant.dart';
import 'package:loginui/screens/splash_screen/component/splash_form.dart';
import 'package:loginui/size_config.dart';

class SplasBody extends StatefulWidget {
  @override
  _SplasBodyState createState() => _SplasBodyState();
}

class _SplasBodyState extends State<SplasBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Welcome to our shop", "image": "assets/images/splash_1.png"},
    {"text": "Welcome to our shop", "image": "assets/images/splash_2.png"},
    {"text": "Welcome to our shop", "image": "assets/images/splash_3.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    // ignore: deprecated_member_use
                    DefaultButton(
                      text: "Continue",
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0XFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
