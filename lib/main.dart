import 'package:flutter/material.dart';
import 'package:nextchat/pages/loader.dart';

void main() {
  runApp(NextChat());
}

class NextChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NextChat',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: LoaderPage(),
    );
  }
}
