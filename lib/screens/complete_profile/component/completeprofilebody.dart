import 'package:flutter/material.dart';
import 'package:loginui/constant.dart';
import 'package:loginui/screens/complete_profile/component/complet_profile_form.dart';

class CompletProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Complete Profile',
                  style: headingStyle,
                ),
                Text(
                  'Complete your details or continue  \nwith social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 60,
                ),
                CompleteProfileForm(),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'By continuing your confirm that you agree \nwith our Term and Condition',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
