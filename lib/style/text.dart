import 'package:flutter/material.dart';


class TextDesign extends StatelessWidget {
  final String basicText;
  final TextStyle textStyle;

  TextDesign({
    @required this.basicText,
    @required this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      basicText,
      textAlign: TextAlign.center,
      textScaleFactor: 2,
      style: textStyle
    );
  }
}