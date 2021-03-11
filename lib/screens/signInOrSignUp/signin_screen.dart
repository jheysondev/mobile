import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding,
        padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0, top: 8.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text("Sign up"),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/signup");
                  },
                ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("NextChat", style: TextStyle(color: Colors.indigo, fontSize: 48.0, fontWeight: FontWeight.bold)),
                  Container(
                    width: 117.0,
                    height: 6.0,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(3.0)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 32.0),
                      child: Text("Welcome back!", style: TextStyle(color: Colors.grey[400], fontSize: 34.0)),
                  ),
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
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot password?", style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right_rounded),
                          label: Text("Sign in")
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text("© NextChat 2021 ~ All rights reserved.", style: TextStyle(fontSize: 12.0)),
            ),
          ],
        ),
      ),
    );
  }
}
