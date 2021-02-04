import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

enum NextChatType { gradient, indigo, deep_purple }

class NextChat extends StatelessWidget {
  NextChat(
      {Key key,
      this.type = NextChatType.gradient,
      this.size = 16.0,
      this.margin = const EdgeInsets.all(0.0)})
      : super(key: key);

  final NextChatType type;
  final double size;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    Widget child;

    if (this.type == NextChatType.gradient) {
      child = GradientText('NextChat',
          gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.indigo],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: this.size,
          ));
    } else {
      Color color;

      if (this.type == NextChatType.deep_purple) {
        color = Colors.deepPurple;
      } else {
        color = Colors.indigo;
      }

      child = Text('NextChat',
          style: TextStyle(
              color: color, fontSize: this.size, fontWeight: FontWeight.w500));
    }

    return Container(margin: this.margin, child: Center(child: child));
  }
}
