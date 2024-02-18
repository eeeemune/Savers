import 'package:flutter/material.dart';
import 'package:savers/theme/theme.dart';

class BottomNavElement extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final String label;
  final Color color;

  BottomNavElement(
      {this.isSelected = false,
      this.color = ColorPalette.indigo,
      this.icon = Icons.error,
      this.label = "Error"});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: color.withOpacity(0.1)),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 24,
                ),
                SizedBox(width: 8),
                Text(
                  label,
                  style: TextStyle(
                      color: color, fontSize: 14, fontFamily: "Pretendard"),
                ),
              ],
            ),
          )
        : Icon(icon, color: ColorPalette.fontGray, size: 24);
  }
}
