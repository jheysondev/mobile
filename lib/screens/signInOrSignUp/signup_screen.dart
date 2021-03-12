import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                child: Text("Sign in"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/signin");
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
                    child: Text("Get started", style: TextStyle(color: Colors.grey[400], fontSize: 34.0)),
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
                              style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
                          ),
                          TextSpan(
                            text: "Terms of Service ",
                            style: TextStyle(color: Colors.indigo, fontSize: 12.0),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () { },
                          ),
                          TextSpan(
                            text: "and ",
                            style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: Colors.indigo, fontSize: 12.0),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () { },
                          ),
                          TextSpan(
                            text: ".",
                            style: TextStyle(color: Colors.grey[400], fontSize: 12.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(top: 16.0),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.keyboard_arrow_right_rounded),
                          label: Text("Sign up")
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
