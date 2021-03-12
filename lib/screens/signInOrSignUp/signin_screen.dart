import 'package:flutter/material.dart';
import 'package:nextchat/screens/signInOrSignUp/components/layout_component.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      page: "signin",
      title: "Welcome back!",
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
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: Text("Forgot password?", style: TextStyle(fontSize: 12.0, color: Colors.grey)),
            ),
          ],
        ),
      ],
      onSubmit: () {},
    );
  }
}
