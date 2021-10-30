import 'package:flutter/material.dart';

class L_elevation_button extends StatelessWidget {
  double height;
  double width;
  VoidCallback onPressed;
  FocusNode? focusNode;
  bool? focus;

  String text;
  double? textsize;
  Color? textcolor;
  FontWeight? fontWeight;
  MaterialStateProperty<Color> primarycolor;
  MaterialStateProperty<double> elevation;

  L_elevation_button(
      {required this.height,
      required this.width,
      required this.elevation,
      required this.onPressed,
      required this.primarycolor,
      this.focusNode,
      this.focus,
      required this.text,
      this.textcolor,
      this.textsize,
      this.fontWeight,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        focusNode: focusNode,
        style: ButtonStyle(
          backgroundColor: primarycolor,
          elevation: elevation,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: textsize,
            color: textcolor,
            fontWeight: fontWeight,
          ),
        ));
  }
}
