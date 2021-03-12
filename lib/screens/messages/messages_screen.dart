import 'package:flutter/material.dart';
import 'package:nextchat/widgets/logged_widget.dart';
import 'package:nextchat/widgets/navigation_widget.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: LoggedWidget(
        children: [
          Text("Messages"),
        ],
      ),
      bottomNavigationBar: NavigationWidget(),
    );
  }
}
