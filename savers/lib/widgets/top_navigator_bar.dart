import 'package:savers/theme/theme.dart';
import 'package:flutter/material.dart';

class TopNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 50,
          child: Icon(Icons.favorite_border,
              color: ColorPalette.fontGray, size: 24),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "현재 심박수",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorPalette.fontGray,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "74bpm",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: ColorPalette.black,
                  fontSize: 16,
                  fontFamily: "Pretendard",
                  fontWeight: FontWeight.w800),
            )
          ],
        )
      ],
    );
  }
}
