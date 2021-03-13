import 'package:flutter/material.dart';

class LayoutComponent extends StatelessWidget {
  final String page;
  final String title;

  final List<Widget> formChildren;

  final void Function() onSubmit;

  LayoutComponent({
    Key key,
    @required this.page,
    @required this.title,
    @required this.formChildren,
    @required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String upOrIn = (page == "signup") ? "in" : "up";

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
          child: Stack(
            children: [
              Positioned(
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    child: Text('Sign $upOrIn'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign$upOrIn');
                    },
                  ),
                ),
              ),
              Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("NextChat", style: TextStyle(color: Colors.indigo, fontSize: 48.0, fontWeight: FontWeight.bold)),
                        Container(
                          width: 117.0,
                          height: 6.0,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(3.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 32.0),
                      child: Text(title, style: TextStyle(color: Colors.grey[400], fontSize: 34.0)),
                    ),
                    ...this.formChildren,
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 16.0),
                        child: ElevatedButton.icon(
                            onPressed: onSubmit,
                            icon: Icon(Icons.keyboard_arrow_right_rounded),
                            label: Text((page == "signup") ? "Sign up" : "Sign in")
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Text("© NextChat 2021 ~ All rights reserved.", style: TextStyle(fontSize: 12.0), textAlign: TextAlign.center),
      ),
    );
  }
}