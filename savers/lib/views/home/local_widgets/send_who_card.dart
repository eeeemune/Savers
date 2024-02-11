import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';

Widget SendWhoCard(String title) {
  return NeumorphismCard().make(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8),
          const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.chevron_right, color: ColorPalette.black))
        ],
      ),
      146,
      124);
}
