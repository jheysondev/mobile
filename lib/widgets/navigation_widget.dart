import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  final routes = <int, String>{
    0: "/home",
    1: "/messages",
    2: "/notifications",
    3: "/profile",
  };

  int _selectedIndex = 0;

  void changeIndexState(int index) {
    if (_selectedIndex == index) {
      return;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Navigator.popUntil(context, (route) {
      String? path = route.settings.name;

      if (routes.containsValue(path)) {
        routes.forEach((key, value) {
          if (value == path) {
            changeIndexState(key);
            return;
          }
        });
      }

      return true;
    });

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_rounded),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline_rounded),
          activeIcon: Icon(Icons.chat_bubble_rounded),
          label: "Notifications",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none_rounded),
          activeIcon: Icon(Icons.notifications_rounded),
          label: "Messages",
        ),
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "assets/images/fake_faces/profile_image.jpg",
              width: 24.0,
              height: 24.0,
            ),
          ),
          activeIcon: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(14.0)),
              boxShadow: [
                BoxShadow(color: Colors.indigo[200]!, spreadRadius: 2, blurRadius: 4),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              "assets/images/fake_faces/profile_image.jpg",
              width: 24.0,
              height: 24.0,
            ),
          ),
          label: "You"
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      iconSize: 24.0,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.grey[400],
      selectedItemColor: Colors.indigo,
      onTap: (int index) {
        if (routes.containsKey(index)) {
          Navigator.of(context).pushNamed(routes[index]!);
          changeIndexState(index);
        }
      },
    );
  }
}
