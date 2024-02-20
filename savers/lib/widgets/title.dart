import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';

Widget title(List<TextSpan> wordList) {
  return RichText(
      text: TextSpan(
          style: TextStyle(
              fontSize: 32,
              fontFamily: "Pretendard",
              height: 1.5,
              color: ColorPalette.black),
          children: wordList));
}
