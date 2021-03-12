import 'package:flutter/material.dart';
import 'package:nextchat/widgets/logged_widget.dart';
import 'package:nextchat/widgets/navigation_widget.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: LoggedWidget(
        children: [
          Text("Notifications"),
        ],
      ),
      bottomNavigationBar: NavigationWidget(),
    );
  }
}
