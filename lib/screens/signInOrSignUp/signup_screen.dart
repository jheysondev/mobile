import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nextchat/screens/signInOrSignUp/components/layout_component.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      page: "signup",
      title: "Get started",
      formChildren: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Username",
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 16.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Repeat password",
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0, left: 6.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "By clicking the button below you will be agree to the ",
                  style: TextStyle(color: Colors.grey[400], fontSize: 16.0),
                ),
                TextSpan(
                  text: "Terms of Service ",
                  style: TextStyle(color: Colors.indigo, fontSize: 16.0),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () { },
                ),
                TextSpan(
                  text: "and ",
                  style: TextStyle(color: Colors.grey[400], fontSize: 16.0),
                ),
                TextSpan(
                  text: "Privacy Policy",
                  style: TextStyle(color: Colors.indigo, fontSize: 16.0),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () { },
                ),
                TextSpan(
                  text: ".",
                  style: TextStyle(color: Colors.grey[400], fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ],
      onSubmit: () {},
    );
  }
}
