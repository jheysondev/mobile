import 'package:flutter/material.dart';
import 'package:nextchat/widgets/logged_widget.dart';
import 'package:nextchat/widgets/navigation_widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: LoggedWidget(
        children: [
          Text("Profile"),
        ],
      ),
      bottomNavigationBar: NavigationWidget(),
    );
  }
}
