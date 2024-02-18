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

// class Title extends StatelessWidget {
//   final List<TextSpan> wordList;
//   Title({required this.wordList});

//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//         text: TextSpan(
//             style: TextStyle(
//                 fontSize: 32,
//                 fontFamily: "Pretendard",
//                 height: 1.5,
//                 color: ColorPalette.black),
//             //     children: [
//             //   TextSpan(text: "평균적으로 "),
//             //   TextSpan(
//             //       text: "2분",
//             //       style: TextStyle(
//             //           color: ColorPalette.red, fontWeight: FontWeight.w700)),
//             //   TextSpan(text: "이내에 ", style: TextStyle(fontWeight: FontWeight.w700)),
//             //   TextSpan(
//             //       text: "\n구조대가 도착", style: TextStyle(fontWeight: FontWeight.w700)),
//             //   TextSpan(text: "해요"),
//             // ]
//             children: wordList));
//   }
// }
