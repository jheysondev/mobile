import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';

class NextChat extends StatelessWidget {
  NextChat({Key key, this.size = 16.0, this.margin = const EdgeInsets.all(0.0)})
      : super(key: key);

  final double size;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: this.margin,
        child: Center(
            child: GradientText('NextChat',
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.indigo],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: this.size,
                ))));
  }
}
