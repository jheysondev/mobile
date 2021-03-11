import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding,
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/begin_chat.svg",
              width: 200.0,
              height: 200.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: Text("NextChat", style: TextStyle(color: Colors.indigo, fontSize: 48.0, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 32.0),
              child: Text(
                "Connect with people across the world in real-time!",
                style: TextStyle(color: Colors.grey[400], fontSize: 24.0),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/signup");
                },
                child: Container(
                    width: double.infinity,
                    child: Center(
                        child: Text("I'm new here"),
                    ),
                ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/signin");
                },
                child: Container(
                    child: Center(
                        child: Text("Sign in"),
                    ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
