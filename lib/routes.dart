
import 'package:flutter/material.dart';
import 'package:nextchat/screens/signInOrSignUp/signin_screen.dart';
import 'package:nextchat/screens/signInOrSignUp/signup_screen.dart';
import 'package:nextchat/screens/signInOrSignUp/welcome_screen.dart';

class Routes extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    "/welcome": (BuildContext context) => WelcomeScreen(),
    "/signin": (BuildContext context) => SignInScreen(),
    "/signup": (BuildContext context) => SignUpScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NextChat',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: "/welcome",
      routes: routes,
    );
  }
}


