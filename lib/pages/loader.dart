import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nextchat/pages/login.dart';
import 'package:nextchat/widgets/nextchat.dart';

class LoaderPage extends StatefulWidget {
  @override
  _LoaderPageState createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          NextChat(size: 48.0, margin: EdgeInsets.only(bottom: 2.0)),
          Text('¡Conecta con alguien al instante!',
              style: TextStyle(color: Colors.grey, fontSize: 12.0))
        ]));
  }
}
