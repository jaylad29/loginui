import 'package:flutter/material.dart';
import 'package:loginui/constant.dart';
import 'package:loginui/screens/complete_profile/complet_profile_screen.dart';
import 'package:loginui/screens/signin/component/signform.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conformPassword;
  bool remember = false;
  final List<String> errors = [];
  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: 30,
          ),
          buildPasswordFormField(),
          SizedBox(
            height: 30,
          ),
          buildConformPasswordField(),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: kPrimaryColor,
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _formKey.currentState.save();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CompleteProfileScreen();
                    }));
                  }
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
          )
        ],
      ),
    );
  }

  TextFormField buildConformPasswordField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conformPassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: '');
        } else if (value.isNotEmpty && password == conformPassword) {
          removeError(error: '');
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: '');
          return "";
        } else if (password != value) {
          addError(error: "");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Conform Password',
          hintText: 'Re-Enter Your Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: '');
        } else if (value.length >= 8) {
          removeError(error: '');
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: '');
          return "";
        } else if (value.length < 8) {
          addError(error: "");
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "PassWord",
        hintText: 'Enter Your Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: 'Valid');
        } else if (value.isEmpty) {
          removeError(error: 'Please Enter Email Id');
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: 'Please Enter Email Id');
          return "";
        } else if (!value.contains(value)) {
          addError(error: 'Please Enter Proper Email Id');
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
