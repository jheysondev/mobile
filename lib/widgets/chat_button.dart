import 'package:flutter/material.dart';

enum ChatButtonType { primary, text }

class ChatButton extends StatelessWidget {
  ChatButton(
      {Key key,
      @required this.type,
      @required this.text,
      @required this.onPressed,
      this.margin = const EdgeInsets.all(0.0),
      this.style = const TextStyle()})
      : super(key: key);

  final ChatButtonType type;
  final String text;
  final void Function() onPressed;

  final EdgeInsetsGeometry margin;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    switch (this.type) {
      case ChatButtonType.text:
        return Container(
            margin: this.margin,
            child: GestureDetector(
              onTap: this.onPressed,
              child: Text(this.text, style: this.style),
            ));

      default:
        return Container(
            width: double.infinity,
            margin: this.margin,
            child: ElevatedButton(
              onPressed: this.onPressed,
              style: ButtonStyle(
                  textStyle:
                      MaterialStateProperty.all(TextStyle(color: Colors.white)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(0.0))),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.deepPurple,
                      Colors.indigo,
                    ],
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Center(child: Text(this.text, style: this.style)),
              ),
            ));
    }
  }
}
