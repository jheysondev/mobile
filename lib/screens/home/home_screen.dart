import 'package:flutter/material.dart';
import 'package:nextchat/widgets/logged_widget.dart';
import 'package:nextchat/widgets/navigation_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoggedWidget(
        children: [
          Text("Home"),
        ],
      ),
      bottomNavigationBar: NavigationWidget(),
    );
  }
}
