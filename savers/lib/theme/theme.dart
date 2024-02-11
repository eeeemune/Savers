import 'package:flutter/material.dart';

class ColorPalette {
  static const Color indigo = Color(0xff4437DE);
  static const Color red = Color(0xffED2430);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff191F28);
  static const Color backGray = Color(0xffF2F4F6);
  static const Color fontGray = Color(0xff82878D);
  static const Color lineGray = Color(0xffE5E8EB);
  static const Color hyperLink = Color(0xff3485FF);
  Color get(String colorName) {
    switch (colorName) {
      case "indigo":
        return indigo;
      case "red":
        return red;
      case "white":
        return white;
      case "black":
        return black;
      case "backGray":
        return backGray;
      case "fontGray":
        return fontGray;
      case "lineGray":
        return lineGray;
      case "hyperLink":
        return hyperLink;
      default:
        throw Exception("Invalid color name");
    }
  }
}

class SizeParameters {
  static const double page_padding = 16.0;
}

class NeumorphismCard {
  double borderRadius;
  double padding;

  NeumorphismCard({this.borderRadius = 16.0, this.padding = 16.0});
  Widget make(Widget child, double width, double height) {
    return Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(0.62, -0.79),
            end: Alignment(-0.62, 0.79),
            colors: [ColorPalette.white, Color(0xFFF2F4F6)],
          ),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x4C6277AE),
              blurRadius: 10,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: child);
  }
}
