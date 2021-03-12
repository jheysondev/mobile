import 'package:flutter/material.dart';

class LoggedWidget extends StatelessWidget {
  LoggedWidget({Key? key, this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "NextChat",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search_rounded,
                        color: Colors.indigo[200],
                        size: 24.0,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              ...this.children!,
            ],
          ),
        ),
      ),
    );
  }
}
